import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_card_owner.freezed.dart';

part 'get_card_owner.g.dart';

@freezed
class GetCardOwnerRequest with _$GetCardOwnerRequest {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GetCardOwnerRequest(String pan) = _GetCardOwnerRequest;

  factory GetCardOwnerRequest.fromJson(Map<String, dynamic> json) =>
      _$GetCardOwnerRequestFromJson(json);
}
