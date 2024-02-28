import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_card_owner.freezed.dart';
part 'get_card_owner.g.dart';

@freezed
class GetCardOwnerResponse with _$GetCardOwnerResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GetCardOwnerResponse(String pan) = _GetCardOwnerResponse;

  factory GetCardOwnerResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCardOwnerResponseFromJson(json);
}
