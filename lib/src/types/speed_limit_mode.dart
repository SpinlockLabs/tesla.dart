part of tesla;

class SpeedLimitMode implements TeslaObject {
  SpeedLimitMode(this.client, this.json);

  @override
  final TeslaClient client;

  @override
  final Map<String, dynamic>? json;

  bool? get isActive => json!["active"];
  bool? get isPinCodeSet => json!["pin_code_set"];

  num? get currentLimitMph => json!["current_limit_mph"];
  num? get maxLimitMph => json!["max_limit_mph"];
  num? get minLimitMph => json!["min_limit_mph"];
}
