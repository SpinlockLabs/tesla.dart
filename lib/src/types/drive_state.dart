part of tesla;

class DriveState implements TeslaObject {
  DriveState(this.client, this.json);

  @override
  final TeslaClient client;

  @override
  final Map<String, dynamic>? json;

  int? get gpsAsOf => json!["gps_as_of"];
  DateTime get gpsAsOfTime => new DateTime.fromMillisecondsSinceEpoch(gpsAsOf!);

  num? get heading => json!["heading"];
  num? get latitude => json!["latitude"];
  num? get longitude => json!["longitude"];

  int? get nativeLocationSupported => json!["native_location_supported"];
  num? get nativeLatitude => json!["native_latitide"];
  num? get nativeLongitude => json!["native_longitude"];
  String? get nativeType => json!["native_type"];

  num? get power => json!["power"];
  String? get shiftState => json!["shift_state"];
  num? get speed => json!["speed"];

  int? get timestamp => json!["timestamp"];
  DateTime get timestampTime =>
      new DateTime.fromMillisecondsSinceEpoch(timestamp!);
}
