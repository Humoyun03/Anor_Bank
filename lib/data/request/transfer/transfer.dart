import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer.freezed.dart';

part 'transfer.g.dart';

@freezed
class TransferRequest with _$TransferRequest {
  @JsonSerializable(explicitToJson: true)
  const factory TransferRequest(
      String type,
      @JsonKey(name: "sender-id")
      String senderId,
      @JsonKey(name: "receiver-pan")
      String receiverPan,
      int amount) = _TransferRequest;

  factory TransferRequest.fromJson(Map<String, dynamic> json) =>
      _$TransferRequestFromJson(json);
}
