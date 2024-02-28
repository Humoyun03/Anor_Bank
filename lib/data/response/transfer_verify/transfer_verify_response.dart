

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transfer_verify_response.g.dart';
part 'transfer_verify_response.freezed.dart';

@freezed
class TransferVerifyResponse with _$TransferVerifyResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TransferVerifyResponse(
      String message
      ) = _TransferVerifyResponse;

  factory TransferVerifyResponse.fromJson(Map<String, dynamic> json) =>
      _$TransferVerifyResponseFromJson(json);
}
