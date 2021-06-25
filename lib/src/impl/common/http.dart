library tesla.impl.common.http;

import 'dart:async';

import '../../../tesla.dart';

abstract class TeslaHttpClient implements TeslaClient {
  TeslaHttpClient(this.email, this.password, this.token, this.endpoints);

  @override
  final String email;

  @override
  final String password;

  @override
  final TeslaApiEndpoints endpoints;

  @override
  TeslaAccessToken? token;

  bool isCurrentTokenValid(bool refreshable) {
    final ttoken = token;

    if (ttoken == null) {
      return false;
    }

    if (refreshable) {
      var now = new DateTime.now();
      return ttoken.expiresAt.difference(now).abs().inSeconds >= 60;
    }
    return true;
  }

  @override
  bool get isAuthorized => isCurrentTokenValid(true);

  @override
  Future login() async {
    if (!isCurrentTokenValid(false)) {
      var result = await sendHttpRequest("/oauth/token",
          body: {
            "grant_type": "password",
            "client_id": endpoints.clientId,
            "client_secret": endpoints.clientSecret,
            "email": email,
            "password": password
          },
          needsToken: false);

      token = new TeslaJsonAccessToken(result);
      return;
    }

    var result = await sendHttpRequest("/oauth/token",
        body: {
          "grant_type": "refresh_token",
          "client_id": endpoints.clientId,
          "client_secret": endpoints.clientSecret,
          "refresh_token": token?.refreshToken
        },
        needsToken: false);

    token = new TeslaJsonAccessToken(result);
  }

  @override
  Future<List<Vehicle>> listVehicles() async {
    var vehicles = <Vehicle>[];

    var result = await (getJsonList("vehicles") as Future<List<dynamic>?>);
    if (result == null) {
      return vehicles;
    }

    for (var item in result) {
      vehicles.add(new Vehicle(this, item));
    }

    return vehicles;
  }

  @override
  Future<Vehicle> getVehicle(int? id) async {
    return new Vehicle(this, await getJsonMap("vehicles/${id}"));
  }

  @override
  Future<AllVehicleState> getAllVehicleState(int? id) async {
    return new AllVehicleState(
        this, await getJsonMap("vehicles/${id}/vehicle_data"));
  }

  @override
  Future<ChargeState> getChargeState(int? id) async {
    return new ChargeState(
        this, await getJsonMap("vehicles/${id}/data_request/charge_state"));
  }

  @override
  Future<DriveState> getDriveState(int? id) async {
    return new DriveState(
        this, await getJsonMap("vehicles/${id}/data_request/drive_state"));
  }

  @override
  Future<ClimateState> getClimateState(int? id) async {
    return new ClimateState(
        this, await getJsonMap("vehicles/${id}/data_request/climate_state"));
  }

  @override
  Future<VehicleConfig> getVehicleConfig(int? id) async {
    return new VehicleConfig(
        this, await getJsonMap("vehicles/${id}/data_request/vehicle_config"));
  }

  @override
  Future<GuiSettings> getGuiSettings(int? id) async {
    return new GuiSettings(
        this, await getJsonMap("vehicles/${id}/data_request/gui_settings"));
  }

  @override
  Future sendVehicleCommand(int? vehicleId, String command,
      {Map<String, dynamic>? params}) async {
    var result = await (getJsonMap("vehicles/${vehicleId}/command/${command}",
        body: params == null ? {} : params, extract: null) as FutureOr<Map<String, dynamic>>);
    if (result["response"] == false) {
      var reason = result["reason"];
      if (reason is String && reason.trim().isNotEmpty) {
        throw new Exception("Failed to send command '${command}': ${reason}");
      } else {
        throw new Exception("Failed to send command '${command}'");
      }
    }
  }

  @override
  Future<Vehicle> wake(int? id) async {
    return new Vehicle(
        this, await getJsonMap("vehicles/${id}/wake_up", body: {}));
  }

  Future<Map<String, dynamic>?> getJsonMap(String url,
      {Map<String, dynamic>? body,
      String? extract: "response",
      bool standard: true}) async {
    return (await sendHttpRequest(_apiUrl(url, standard),
        body: body, extract: extract)) as Map<String, dynamic>?;
  }

  Future<List<dynamic>?> getJsonList(String url,
      {Map<String, dynamic>? body,
      String extract: "response",
      bool standard: true}) async {
    return (await sendHttpRequest(_apiUrl(url, standard),
        body: body, extract: extract)) as List<dynamic>?;
  }

  Future<dynamic> sendHttpRequest(String url,
      {bool needsToken: true, String? extract, Map<String, dynamic>? body});

  String _apiUrl(String path, bool standard) =>
      standard ? "/api/1/${path}" : path;
}
