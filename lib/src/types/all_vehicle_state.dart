part of tesla;

class AllVehicleState extends Vehicle {
  AllVehicleState(TeslaClient client, Map<String, dynamic>? json)
      : super(client, json);

  DriveState get driveState => new DriveState(client, json!["drive_state"]);
  VehicleState get vehicleState =>
      new VehicleState(client, json!["vehicle_state"]);
  VehicleConfig get vehicleConfig =>
      new VehicleConfig(client, json!["vehicle_config"]);
  ChargeState get chargeState => new ChargeState(client, json!["charge_state"]);
  ClimateState get climateState =>
      new ClimateState(client, json!["climate_state"]);
  GuiSettings get guiSettings => new GuiSettings(client, json!["gui_settings"]);
}
