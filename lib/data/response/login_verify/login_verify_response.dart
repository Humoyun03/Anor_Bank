import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_verify_response.freezed.dart';
part 'login_verify_response.g.dart';

@freezed
class LoginVerifyResponse with _$LoginVerifyResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory LoginVerifyResponse(
    @JsonKey(name: "refresh-token")
    String refreshToken,
    @JsonKey(name: "access-token")
    String accessToken,
  ) = _LoginVerifyResponse;

  factory LoginVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginVerifyResponseFromJson(json);
}
