part of tesla;

class Vehicle implements TeslaObject {
  Vehicle(this.client, this.json);

  @override
  final TeslaClient client;

  @override
  final Map<String, dynamic>? json;

  int? get id => json!["id"];
  int? get vehicleId => json!["vehicle_id"];
  String? get vin => json!["vin"];
  String? get displayName => json!["display_name"];
  String? get rawOptionCodes => json!["option_codes"];
  List<String> get optionCodes => rawOptionCodes!.split(",");
  List<VehicleOptionCode?> get knownOptionCodes => optionCodes
      .map(VehicleOptionCode.lookup)
      .where((item) => item != null)
      .toList();

  List<String> get unknownOptionCodes =>
      optionCodes.where((x) => VehicleOptionCode.lookup(x) == null).toList();

  String? get color => json!["color"];
  List<String> get tokens => (json!["tokens"] as List)
      .where((it) => it is String)
      .map((it) => it as String)
      .toList();
  String? get state => json!["state"];
  bool? get isInService => json!["in_service"];
  String? get idString => json!["id_s"];
  bool? get isCalendarEnabled => json!["calendar_enabled"];
  int? get apiVersion => json!["api_version"];
  String? get backseatToken => json!["backseat_token"];
  String get backseatTokenUpdatedAt =>
      json!["backseat_token_updated_at"].toString();

  Future<AllVehicleState> getAllVehicleState() async {
    return await client.getAllVehicleState(id);
  }

  Future<ChargeState> getChargeState() async {
    return await client.getChargeState(id);
  }

  Future<DriveState> getDriveState() async {
    return await client.getDriveState(id);
  }

  Future<VehicleConfig> getVehicleConfig() async {
    return await client.getVehicleConfig(id);
  }

  Future<ClimateState> getClimateState() async {
    return await client.getClimateState(id);
  }

  Future<GuiSettings> getGuiSettings() async {
    return await client.getGuiSettings(id);
  }

  Future<Vehicle> wake({bool retry: true}) async {
    if (!retry) {
      return await client.wake(id);
    }

    for (var i = 1; i <= 20; i++) {
      var result = await client.wake(id);
      if (result.state == "online") {
        return result;
      }
      await new Future.delayed(const Duration(seconds: 2));
    }

    throw new Exception("Failed to wake up vehicle.");
  }

  Future sendCommand(String command, {Map<String, dynamic>? params}) async {
    await client.sendVehicleCommand(id, command, params: params);
  }

  Future flashLights() async {
    await sendCommand("flash_lights");
  }

  Future honkHorn() async {
    await sendCommand("honk_horn");
  }

  Future remoteStartDrive() async {
    await sendCommand("remote_start_drive",
        params: {"password": client.password});
  }

  Future unlock() async {
    await sendCommand("door_unlock");
  }

  Future lock() async {
    await sendCommand("door_lock");
  }

  Future openChargePort() async {
    await sendCommand("charge_port_door_open");
  }

  Future closeChargePort() async {
    await sendCommand("charge_port_door_close");
  }

  Future setChargeLimitStandard() async {
    await sendCommand("charge_standard");
  }

  Future setChargeLimitMaxRange() async {
    await sendCommand("charge_max_range");
  }

  Future setChargeLimit(int percent) async {
    await sendCommand("set_charge_limit", params: {"percent": percent});
  }

  Future startCharge() async {
    await sendCommand("charge_start");
  }

  Future stopCharge() async {
    await sendCommand("charge_stop");
  }

  Future actuateTrunk({String trunk: "rear"}) async {
    await sendCommand("actuate_trunk", params: {"which_trunk": trunk});
  }

  Future startAutoConditioning() async {
    await sendCommand("auto_conditioning_start");
  }

  Future stopAutoConditioning() async {
    await sendCommand("auto_conditioning_stop");
  }

  Future setAutoConditioningTemps(num driver, num passenger) async {
    await sendCommand("set_temps",
        params: {"driver_temp": driver, "passenger_temp": passenger});
  }

  Future setSentryMode(bool sentryModeOn) async {
    await sendCommand("set_sentry_mode", params: {"on": sentryModeOn});
  }

  Future sendNavigationRequest(String input) async {
    await sendCommand("navigation_request", params: {
      "type": "share_ext_content_raw",
      "value": {"android.intent.extra.TEXT": input},
      "locale": "en-US",
      "timestamp_ms": new DateTime.now().millisecondsSinceEpoch.toString()
    });
  }

  Future mediaTogglePlayback() async {
    await sendCommand("media_toggle_playback");
  }

  Future mediaNextTrack() async {
    await sendCommand("media_next_track");
  }

  Future mediaPreviousTrack() async {
    await sendCommand("media_prev_track");
  }

  Future mediaPreviousFavorite() async {
    await sendCommand("media_prev_fav");
  }

  Future mediaNextFavorite() async {
    await sendCommand("media_next_fav");
  }

  Future mediaVolumeUp() async {
    await sendCommand("media_volume_up");
  }

  Future mediaVolumeDown() async {
    await sendCommand("media_volume_down");
  }

  Future setValetMode({bool enabled: true, String pin: ""}) async {
    await sendCommand("set_valet_mode",
        params: {"on": enabled, "password": pin});
  }

  Future resetValetPin() async {
    await sendCommand("reset_valet_pin");
  }

  Future setSteeringWheelHeater(bool enabled) async {
    await sendCommand("remote_steering_wheel_heater_request",
        params: {"on": enabled});
  }

  Future setSeatHeater(SeatHeater heater, int level) async {
    await sendCommand("remote_seat_heater_request",
        params: {"heater": heater.id, "level": level});
  }

  Future setSpeedLimit(int mph) async {
    await sendCommand("speed_limit_set_limit", params: {"limit_mph": mph});
  }

  Future controlSunroof(bool vent) async {
    await sendCommand("sun_roof_control",
        params: {"state": vent ? "vent" : "close"});
  }

  Future speedLimitActivate({String pin: ""}) async {
    await sendCommand("speed_limit_activate", params: {"pin": pin});
  }

  Future speedLimitDeactivate(String pin) async {
    await sendCommand("speed_limit_deactivate", params: {"pin": pin});
  }

  Future speedLimitClearPin(String pin) async {
    await sendCommand("speed_limit_clear_pin", params: {"pin": pin});
  }

  Future scheduleSoftwareUpdate({int offsetSeconds: 0}) async {
    await sendCommand("schedule_software_update",
        params: {"offset_sec": offsetSeconds});
  }

  Future cancelSoftwareUpdate() async {
    await sendCommand("cancel_software_update");
  }

  Future triggerHomeLink({num? latitude: 0.0, num? longitude: 0.0}) async {
    await sendCommand("trigger_homelink",
        params: {"lat": latitude, "lon": longitude});
  }

  Future<SummonClient> summon() async {
    return await client.summon(vehicleId, tokens.first);
  }
}
