import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_verify_request.freezed.dart';

part 'login_verify_request.g.dart';

@freezed
class LoginVerifyRequest with _$LoginVerifyRequest {
  const factory LoginVerifyRequest(String token, String code) =
      _LoginVerifyRequest;

  factory LoginVerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginVerifyRequestFromJson(json);
}
