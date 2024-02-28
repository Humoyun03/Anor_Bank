import 'package:freezed_annotation/freezed_annotation.dart';

part 'LoginResponse.freezed.dart';

part 'LoginResponse.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse(String token) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
