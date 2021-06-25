part of tesla;

abstract class SummonMessage {
  SummonMessage(this.type);

  final String? type;
}

abstract class SummonRequestMessage extends SummonMessage {
  SummonRequestMessage(String type) : super(type);

  Map<String, dynamic> get params;
}

class SummonHelloMessage extends SummonMessage {
  SummonHelloMessage(
      {this.autoparkPauseTimeout,
      this.autoparkStopTimeout,
      this.heartbeatFrequency,
      this.connectionTimeout})
      : super("control:hello");

  final int? autoparkPauseTimeout;
  final int? autoparkStopTimeout;
  final int? heartbeatFrequency;
  final int? connectionTimeout;
}

class SummonGoodbyeMessage extends SummonMessage {
  SummonGoodbyeMessage({this.reason}) : super("control:goodbye");

  final String? reason;
}

class SummonPongMessage extends SummonMessage {
  SummonPongMessage({this.timestamp}) : super("control:pong");

  final DateTime? timestamp;
}

class SummonAutoparkCommandResultMessage extends SummonMessage {
  SummonAutoparkCommandResultMessage(
      {this.cmdType, this.failureReason, this.result})
      : super("autopark:cmd_result");

  final String? cmdType;
  final String? failureReason;
  final bool? result;
}

class SummonVisualizationMessage extends SummonMessage {
  SummonVisualizationMessage({this.path}) : super("autopark:smart_summon_viz");

  final List<double>? path;
}

class SummonAutoparkErrorMessage extends SummonMessage {
  SummonAutoparkErrorMessage({this.errorType}) : super("autopark:error");

  final String? errorType;
}

class SummonHomelinkCommandResultMessage extends SummonMessage {
  SummonHomelinkCommandResultMessage(
      {this.cmdType, this.failureReason, this.result})
      : super("homelink:cmd_result");

  final String? cmdType;
  final String? failureReason;
  final bool? result;
}

class SummonAutoparkStyleMessage extends SummonMessage {
  SummonAutoparkStyleMessage({this.style}) : super("autopark:style");

  final String? style;
}

class SummonAutoparkStatusMessage extends SummonMessage {
  SummonAutoparkStatusMessage({this.state}) : super("autopark:status");

  final String? state;
}

class SummonHomelinkStatusMessage extends SummonMessage {
  SummonHomelinkStatusMessage({this.homelinkNearby}) : super("homelink:status");

  final bool? homelinkNearby;
}

class SummonVehicleLocationMessage extends SummonMessage {
  SummonVehicleLocationMessage({this.latitude, this.longitude})
      : super("vehicle_data:location");

  final num? latitude;
  final num? longitude;
}

class SummonAutoparkHeartbeatCarMessage extends SummonMessage {
  SummonAutoparkHeartbeatCarMessage({this.timestamp})
      : super("autopark:heartbeat_car");

  final DateTime? timestamp;
}

class SummonAutoparkHeartbeatAppMessage extends SummonRequestMessage {
  SummonAutoparkHeartbeatAppMessage() : super("autopark:heartbeat_app");

  @override
  Map<String, dynamic> get params =>
      {"timestamp": new DateTime.now().millisecondsSinceEpoch};
}

class SummonAutoparkForwardMessage extends SummonRequestMessage {
  SummonAutoparkForwardMessage(this.latitude, this.longitude)
      : super("autopark:cmd_forward");

  final num? latitude;
  final num? longitude;

  @override
  Map<String, dynamic> get params =>
      {"latitude": latitude, "longitude": longitude};
}

class SummonAutoparkReverseMessage extends SummonRequestMessage {
  SummonAutoparkReverseMessage(this.latitude, this.longitude)
      : super("autopark:cmd_reverse");

  final num? latitude;
  final num? longitude;

  @override
  Map<String, dynamic> get params =>
      {"latitude": latitude, "longitude": longitude};
}

class SummonFindMeRequestMessage extends SummonRequestMessage {
  SummonFindMeRequestMessage(
      {this.latitude,
      this.longitude,
      this.accuracy,
      this.goalLatitude,
      this.goalLongitude})
      : super("autopark:cmd_find_me");

  final num? latitude;
  final num? longitude;
  final num? accuracy;
  final num? goalLatitude;
  final num? goalLongitude;

  @override
  Map<String, dynamic> get params => {
        "latitude": latitude,
        "longitude": longitude,
        "accuracy": accuracy,
        "goal_latitude": goalLatitude,
        "goal_longitude": goalLongitude
      };
}

class SummonAutoparkAbortMessage extends SummonRequestMessage {
  SummonAutoparkAbortMessage() : super("autopark:cmd_abort");

  @override
  Map<String, dynamic> get params => {};
}

class SummonHomelinkTriggerMessage extends SummonRequestMessage {
  SummonHomelinkTriggerMessage(this.latitude, this.longitude)
      : super("homelink:cmd_trigger");

  final num latitude;
  final num longitude;

  @override
  Map<String, dynamic> get params =>
      {"latitude": latitude, "longitude": longitude};
}

class SummonUnknownMessage extends SummonMessage {
  SummonUnknownMessage(String? type, this.content) : super(type);

  final Map<String, dynamic> content;
}

abstract class SummonClient {
  Stream<SummonMessage> get onMessage;
  void send(SummonRequestMessage message);
  void close();
}
