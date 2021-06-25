import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:tesla/tool.dart';

late TeslaClient client;
SummonVehicleLocationMessage? location;

void _handleEvent(SummonMessage event) {
  if (event is SummonAutoparkErrorMessage) {
    print("[Autopark Error] ${event.errorType}");
  } else if (event is SummonAutoparkCommandResultMessage) {
    if (!event.result!) {
      print(
          "[Autopark Failure] ${event.cmdType} failed: ${event.failureReason}");
    } else {
      print("[Autopark Success] ${event.cmdType}");
    }
  } else if (event is SummonAutoparkStatusMessage) {
    print("[Autopark Status] ${event.state}");
  } else if (event is SummonAutoparkStyleMessage) {
    print("[Autopark Style] ${event.style}");
  } else if (event is SummonGoodbyeMessage) {
    print("[Goodbye] ${event.reason}");
  } else if (event is SummonAutoparkHeartbeatCarMessage) {
    // SKIP
    return;
  } else if (event is SummonVehicleLocationMessage) {
    print("[Vehicle Location] ${event.latitude}, ${event.longitude}");
  } else if (event is SummonVisualizationMessage) {
    print("[Visualization] ${event.path!.length} points");
  } else if (event is SummonUnknownMessage) {
    print("[Unknown] ${event.type}: ${event.content}");
  } else {
    return;
  }

  stdout.write("> ");
}

Future<SummonClient> _begin() async {
  var vehicles = await client.listVehicles();
  var vehicle = vehicles.first;
  await vehicle.wake();
  var summon = await vehicle.summon();
  summon.onMessage.listen(_handleEvent);
  return summon;
}

Future main(List<String> args) async {
  client = getTeslaClient();

  var summon = await _begin();
  stdout.write("> ");
  await for (var line
      in stdin.transform(const Utf8Decoder()).transform(const LineSplitter())) {
    try {
      if (line == "forward") {
        var vehicle = (await client.listVehicles()).first;
        await vehicle.wake();
        var state = await vehicle.getAllVehicleState();

        await summon.send(new SummonAutoparkForwardMessage(
            state.driveState.latitude, state.driveState.longitude));
        print("[Sent] Forward");
      } else if (line == "reverse") {
        var vehicle = (await client.listVehicles()).first;
        await vehicle.wake();
        var state = await vehicle.getAllVehicleState();

        await summon.send(new SummonAutoparkReverseMessage(
            state.driveState.latitude, state.driveState.longitude));
        print("[Sent] Reverse");
      } else if (line == "abort") {
        await summon.send(new SummonAutoparkAbortMessage());
        print("[Sent] Abort");
      }
    } catch (e) {
      print("[ERROR] ${e}");
    }
    stdout.write("> ");
  }
}
