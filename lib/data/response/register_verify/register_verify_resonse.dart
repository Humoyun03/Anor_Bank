import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_verify_resonse.freezed.dart';
part 'register_verify_resonse.g.dart';

@freezed
class RegisterVerifyResponse with _$RegisterVerifyResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory RegisterVerifyResponse(
      @JsonKey(name: "refresh-token")
      String refreshToken,
      @JsonKey(name: "access-token")
      String accessToken,
      ) = _RegisterVerifyResponse;

  factory RegisterVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterVerifyResponseFromJson(json);
}