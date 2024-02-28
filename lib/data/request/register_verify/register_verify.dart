import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_verify.freezed.dart';

part 'register_verify.g.dart';

@freezed
class RegisterVerify with _$RegisterVerify {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory RegisterVerify(
    String token,
    String code,
  ) = _RegisterVerify;

  factory RegisterVerify.fromJson(Map<String, dynamic> json) =>
      _$RegisterVerifyFromJson(json);
}
