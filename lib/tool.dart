library tesla.tool;

import 'dart:io';
import 'dart:convert';

import 'tesla.dart';
export 'tesla.dart';

const List<String> _emailEnvVars = const <String>[
  "TESLA_EMAIL",
  "TESLA_USERNAME",
  "TESLA_USER",
  "teslaEmail"
];

const List<String> _passwordEnvVars = const <String>[
  "TESLA_PASSWORD",
  "TESLA_PASS",
  "TESLA_PWD",
  "teslaPassword"
];

const List<String> _credentialsEnvVars = const <String>[
  "TESLA_CREDENTIALS_PATH",
  "TESLA_CREDENTIALS_FILE",
  "TESLA_CREDENTIALS_JSON"
];

String? _getEnvValue(List<String> possible, [bool error = true]) {
  for (var key in possible) {
    var dartEnvValue = new String.fromEnvironment(key);
    if (dartEnvValue != null) {
      return dartEnvValue;
    }

    if (Platform.environment.containsKey(key) &&
        Platform.environment[key]!.isNotEmpty) {
      return Platform.environment[key];
    }
  }

  if (error) {
    throw new Exception(
        "Expected environment variable '${possible.first}' to be present.");
  }
  return null;
}

String? _getCredentialValue(List<String> possible) {
  var path = _getEnvValue(_credentialsEnvVars, false);

  if (path != null) {
    var file = new File(path);
    if (file.existsSync()) {
      var content = file.readAsStringSync();
      var map = json.decode(content);
      var value = map[possible.last];
      if (value != null) {
        return value;
      }
    }
  }

  return _getEnvValue(possible);
}

TeslaClient getTeslaClient(
    {String? teslaUsername, String? teslaPassword, TeslaApiEndpoints? endpoints}) {
  var email = teslaUsername ?? _getCredentialValue(_emailEnvVars)!.trim();
  var password = teslaPassword ?? _getCredentialValue(_passwordEnvVars)!;

  if (password.startsWith("base64:")) {
    password =
        const Utf8Decoder().convert(const Base64Decoder().convert(password, 7));
  }

  if (password.endsWith("\n")) {
    password = password.substring(0, password.length - 1);
  }

  return new TeslaClient(email, password, endpoints: endpoints);
}
