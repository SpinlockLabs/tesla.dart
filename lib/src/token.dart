part of tesla;

abstract class TeslaAccessToken {
  String? get accessToken;
  String? get refreshToken;
  DateTime get createdAt;
  DateTime get expiresAt;

  bool get isExpired => expiresAt.isAfter(new DateTime.now());
}

class TeslaJsonAccessToken extends TeslaAccessToken {
  TeslaJsonAccessToken(this.json);

  final Map<String, dynamic>? json;

  int? get expiresInSeconds => json!["expires_in"] as int?;
  int? get createdAtEpochSeconds => json!["created_at"] as int?;

  String? get tokenType => json!["token_type"];

  @override
  String? get accessToken => json!["access_token"] as String?;

  @override
  String? get refreshToken => json!["refresh_token"] as String?;

  @override
  DateTime get createdAt =>
      new DateTime.fromMillisecondsSinceEpoch(createdAtEpochSeconds! * 1000);

  @override
  DateTime get expiresAt =>
      createdAt.add(new Duration(seconds: expiresInSeconds!));
}
