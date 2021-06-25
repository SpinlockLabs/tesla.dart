part of tesla;

class ClimateState implements TeslaObject {
  ClimateState(this.client, this.json);

  @override
  final TeslaClient client;

  @override
  final Map<String, dynamic>? json;

  bool? get batteryHeater => json!["battery_heater"];
  bool? get batteryHeaterNoPower => json!["battery_heater_no_power"];
  num? get driverTemperatureSetting => json!["driver_temp_setting"];
  int? get fanStatus => json!["fan_status"];
  num? get insideTemperature => json!["inside_temp"];
  bool? get isAutoConditioningOn => json!["is_auto_conditioning_on"];
  bool? get isClimateOn => json!["is_climate_on"];
  bool? get isFrontDefrosterOn => json!["is_front_defroster_on"];
  bool? get isPreconditioning => json!["is_preconditioning"];
  bool? get isRearDefrosterOn => json!["is_rear_defroster_on"];
  num? get leftTemperatureDirection => json!["left_temp_direction"];
  num? get maxAvailableTemperature => json!["max_avail_temp"];
  num? get minAvailableTemperature => json!["min_avail_temp"];
  num? get outsideTemperature => json!["outside_temp"];
  num? get passengerTemperatureSetting => json!["passenger_temp_setting"];
  bool? get isRemoteHeaterControlEnabled =>
      json!["remote_heater_control_enabled"];
  num? get rightTemperatureDirection => json!["right_temp_direction"];
  int? get seatHeaterLeft => json!["seat_heater_left"];
  int? get seatHeaterRearCenter => json!["seat_heater_rear_center"];
  int? get seatHeaterRearLeft => json!["seat_heater_rear_left"];
  int? get seatHeaterRearRight => json!["seat_heater_rear_right"];
  int? get seatHeaterRight => json!["seat_heater_right"];
  bool? get hasSideMirrorHeaters => json!["side_mirror_heaters"];
  bool? get hasSmartPreconditioning => json!["smart_preconditioning"];
  bool? get hasSteeringWheelHeater => json!["steering_wheel_heater"];
  bool? get hasWiperBladeHeater => json!["wiper_blade_heater"];

  int? get timestamp => json!["timestamp"];
  DateTime get timestampTime =>
      new DateTime.fromMillisecondsSinceEpoch(timestamp!);
}
