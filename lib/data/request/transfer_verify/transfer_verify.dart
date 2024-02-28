



import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';





part 'transfer_verify.freezed.dart';
part 'transfer_verify.g.dart';

@freezed
class TransferVerifyRequest with _$TransferVerifyRequest {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TransferVerifyRequest(
      String token,
      String code
      ) = _TransferVerifyRequest;

  factory TransferVerifyRequest.fromJson(Map<String, dynamic> json) =>
      _$TransferVerifyRequestFromJson(json);
}
