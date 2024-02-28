import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer.freezed.dart';

part 'transfer.g.dart';

@freezed
class TransferResponse with _$TransferResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory TransferResponse(
      String token
      ) = _TransferResponse;

  factory TransferResponse.fromJson(Map<String, dynamic> json) =>
      _$TransferResponseFromJson(json);
}
