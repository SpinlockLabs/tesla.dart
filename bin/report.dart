import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:tesla/tool.dart';

late TeslaClient client;

Future _updateVehicle(Vehicle vehicle, [int schedulerTime = 10]) async {
  try {
    vehicle = await client.getVehicle(vehicle.id);

    if (vehicle.state != "online") {
      schedulerTime = 10;

      var json = new Map<String, dynamic>.from(vehicle.json!);
      json["timestamp"] = new DateTime.now().millisecondsSinceEpoch;
      print(const JsonEncoder().convert(json));
    } else {
      schedulerTime = 10;
      var state = await vehicle.getAllVehicleState();

      if (state.driveState.shiftState == null) {
        schedulerTime = 500;
      }

      var json = new Map<String, dynamic>.from(state.json!);
      json["timestamp"] = new DateTime.now().millisecondsSinceEpoch;
      print(const JsonEncoder().convert(json));
    }
  } catch (e, stack) {
    stderr.writeln("ERROR: ${e}\n${stack}");
  }

  new Timer(new Duration(seconds: schedulerTime), () {
    _updateVehicle(vehicle, schedulerTime);
  });
}

Future main() async {
  client = getTeslaClient();

  for (var vehicle in await client.listVehicles()) {
    new Future(() async {
      await _updateVehicle(vehicle);
    });
  }
}
