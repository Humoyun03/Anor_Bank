

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_resend.g.dart';
part 'transfer_resend.freezed.dart';

@freezed
class TransferResendRequest with _$TransferResendRequest {
@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
const factory TransferResendRequest(String token) = _TransferResendRequest;

factory TransferResendRequest.fromJson(Map<String, dynamic> json) =>
    _$TransferResendRequestFromJson(json);
}




