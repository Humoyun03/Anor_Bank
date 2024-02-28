import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request.freezed.dart';

part 'register_request.g.dart';

@freezed
class RegisterRequest with _$RegisterRequest {
  @JsonSerializable(explicitToJson: true)
  const factory RegisterRequest(
    String phone,
    String password,
    @JsonKey(name: "first-name") String firstName,
    @JsonKey(name: "last-name") String lastName,
    @JsonKey(name: "born-date") String bornDate,
    int gender,
  ) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}
