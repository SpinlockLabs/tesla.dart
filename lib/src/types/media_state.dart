part of tesla;

class MediaState implements TeslaObject {
  MediaState(this.client, this.json);

  @override
  final TeslaClient client;

  @override
  final Map<String, dynamic>? json;

  bool? get isRemoteControlEnabled => json!["remote_control_enabled"];
}
