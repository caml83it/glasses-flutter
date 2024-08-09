import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_auth_response.freezed.dart';
part 'api_auth_response.g.dart';

@freezed
@JsonSerializable(genericArgumentFactories: true)
class ApiAuthResponse<T> with _$ApiAuthResponse<T> {
  factory ApiAuthResponse({
    @JsonKey(name: 'result') required String result,
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'user') T? user,
  }) = _ApiAuthResponse<T>;

  factory ApiAuthResponse.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$ApiAuthResponseFromJson<T>(json, fromJsonT);
  }
}
