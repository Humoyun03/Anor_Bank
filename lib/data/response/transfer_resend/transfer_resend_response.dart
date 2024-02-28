


import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'transfer_resend_response.freezed.dart';
part 'transfer_resend_response.g.dart';

@freezed
class TransferResendResponse with _$TransferResendResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TransferResendResponse(String token) = _TransferResendResponse;

  factory TransferResendResponse.fromJson(Map<String, dynamic> json) =>
      _$TransferResendResponseFromJson(json);
}
