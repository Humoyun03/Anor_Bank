import 'package:freezed_annotation/freezed_annotation.dart';

part 'RegisterResponse.freezed.dart';

part 'RegisterResponse.g.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse(String token) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}
