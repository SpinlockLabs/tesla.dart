part of tesla;

class GuiSettings implements TeslaObject {
  GuiSettings(this.client, this.json);

  @override
  final TeslaClient client;

  @override
  final Map<String, dynamic>? json;

  bool? get is24HourTime => json!["gui_24_hour_time"];
  String? get chargeRateUnits => json!["gui_charge_rate_units"];
  String? get distanceUnits => json!["gui_distance_units"];
  String? get rangeDisplay => json!["gui_range_display"];
  String? get temperatureUnits => json!["gui_temperature_units"];

  int? get timestamp => json!["timestamp"];
  DateTime get timestampTime =>
      new DateTime.fromMillisecondsSinceEpoch(timestamp!);
}
