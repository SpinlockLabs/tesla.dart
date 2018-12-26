import 'package:tesla/tesla.dart';

main(List<String> args) async {
  var client = new TeslaClient(args[0], args[1]);

  for (var vehicle in await client.listAccountVehicles()) {
    var state = await vehicle.getAllVehicleState();
    print("${state.displayName}:");
    print("  VIN: ${state.vin}");
    print("  State: ${state.state}");
    print("  Location: ${state.driveState.latitude} LAT, ${state.driveState.longitude} LONG");
  }

  client.close();
}
