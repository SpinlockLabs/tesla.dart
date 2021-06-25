library tesla.impl.io;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import '../../tesla.dart';
import 'common/summon.dart';
import 'common/http.dart';

final ContentType _jsonContentType =
    new ContentType("application", "json", charset: "utf-8");

HttpClient _createHttpClient() {
  var client = new HttpClient();
  client.userAgent = "Tesla.dart";
  return client;
}

class TeslaClientImpl extends TeslaHttpClient {
  TeslaClientImpl(String email, String password, TeslaAccessToken? token,
      TeslaApiEndpoints? endpoints,
      {HttpClient? client})
      : this.client = client == null ? _createHttpClient() : client,
        super(email, password, token, endpoints == null ? new TeslaApiEndpoints.standard() : endpoints);

  final HttpClient client;

  @override
  Future<dynamic> sendHttpRequest(String url,
      {bool needsToken: true,
      String? extract,
      Map<String, dynamic>? body}) async {
    var uri = endpoints.ownersApiUrl.resolve(url);

    if (endpoints.enableProxyMode) {
      uri = uri.replace(queryParameters: {"__tesla": "api"});
    }

    var request =
        body == null ? await client.getUrl(uri) : await client.postUrl(uri);
    request.headers.set("User-Agent", "Tesla.dart");
    if (needsToken) {
      if (!isCurrentTokenValid(true)) {
        await login();
      }
      request.headers.add("Authorization", "Bearer ${token?.accessToken}");
    }
    if (body != null) {
      request.headers.contentType = _jsonContentType;
      request.write(const JsonEncoder().convert(body));
    }
    var response = await request.close();
    var content =
        await response.cast<List<int>>().transform(const Utf8Decoder()).join();
    if (response.statusCode != 200) {
      throw new Exception(
          "Failed to perform action. (Status Code: ${response.statusCode})\n${content}");
    }
    var result = const JsonDecoder().convert(content);

    if (result is Map) {
      if (extract != null) {
        return result[extract];
      }
    }

    return result;
  }

  @override
  Future<SummonClient> summon(int? vehicleId, String token) async {
    var uri = endpoints.summonConnectUrl.resolve(vehicleId.toString());
    if (endpoints.enableProxyMode) {
      uri = uri.replace(queryParameters: {"__tesla": "summon"});
    }
    return await SummonClientImpl.connect(uri, email, token);
  }

  @override
  Future close() async {
    client.close();
  }
}

class SummonClientImpl extends SummonCommonClient {
  SummonClientImpl(this.socket) {
    socket.listen(_onData);
    socket.done.then((_) {
      stopAutoHeartbeat();
    });
  }

  final WebSocket socket;

  void _onData(input) {
    if (input is String) {
      onMessageReceived(input);
    } else {
      var text = const Utf8Decoder().convert(input);
      onMessageReceived(text);
    }
  }

  @override
  void send(SummonRequestMessage message) {
    var output = const JsonEncoder().convert(
        <String, dynamic>{"msg_type": message.type}..addAll(message.params));
    socket.add(output);
  }

  @override
  void close() {
    super.close();
    socket.close();
  }

  static Future<SummonClient> connect(
      Uri url, String email, String token) async {
    var auth = const Base64Encoder.urlSafe()
        .convert(const Utf8Encoder().convert("${email}:${token}"));

    // ignore: close_sinks
    var socket = await WebSocket.connect(url.toString(),
        headers: {"Authorization": "Basic ${auth}"});
    var client = new SummonClientImpl(socket);
    return client;
  }
}
