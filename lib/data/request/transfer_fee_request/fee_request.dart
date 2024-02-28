import 'package:freezed_annotation/freezed_annotation.dart';

part 'fee_request.freezed.dart';

part 'fee_request.g.dart';

@freezed
class FeeRequest with _$FeeRequest {

  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory FeeRequest(
      @JsonKey(name: "sender-id") String senderid,
      String receiver,
      int amount
      ) = _FeeRequest;

  factory FeeRequest.fromJson(Map<String, dynamic> json) =>
      _$FeeRequestFromJson(json);
}
