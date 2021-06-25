part of tesla;

class ChargeState implements TeslaObject {
  ChargeState(this.client, this.json);

  @override
  final TeslaClient client;

  @override
  final Map<String, dynamic>? json;

  bool? get isBatteryHeaterOn => json!["battery_heater_on"];

  num? get batteryLevel => json!["battery_level"];
  num? get usableBatteryLevel => json!["usable_battery_level"];

  num? get batteryRange => json!["battery_range"];

  num? get chargeCurrentRequest => json!["charge_current_request"];
  num? get chargeCurrentRequestMax => json!["charge_current_requyest_max"];
  bool? get chargeEnableRequest => json!["charge_enable_request"];
  num? get chargeEnergyAdded => json!["charge_energy_added"];
  num? get chargeLimitSoc => json!["charge_limit_soc"];
  num? get chargeLimitSocMax => json!["charge_limit_soc_max"];
  num? get chargeLimitSocMin => json!["charge_limit_soc_min"];
  num? get chargeLimitSocStd => json!["charge_limit_soc_std"];

  num? get chargeMilesAddedIdeal => json!["charge_miles_added_ideal"];
  num? get chargeMilesAddedRated => json!["charge_miles_added_rated"];

  bool? get isChargePortDoorOpen => json!["charge_port_door_open"];
  String? get chargePortLatch => json!["charge_port_latch"];

  num? get chargeRate => json!["charge_rate"];
  bool? get chargeToMaxRange => json!["charge_to_max_range"];

  num? get chargerActualCurrent => json!["charger_actual_current"];
  num? get chargerPilotCurrent => json!["charger_pilot_current"];

  String? get chargingState => json!["charging_state"];
  num? get estimatedBatteryRange => json!["est_battery_range"];
  num? get idealBatteryRange => json!["ideal_battery_range"];

  bool? get isNotEnoughPowerToHeat => json!["not_enough_power_to_heat"];
  bool? get isTripCharging => json!["trip_charging"];

  int? get timestamp => json!["timestamp"];
  DateTime get timestampTime =>
      new DateTime.fromMillisecondsSinceEpoch(timestamp!);
}
