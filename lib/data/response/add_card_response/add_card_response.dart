import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_card_response.freezed.dart';

part 'add_card_response.g.dart';

@freezed
class AddCardResponse with _$AddCardResponse {
  const factory AddCardResponse(
    String message
  ) = _AddCardResponse;

  factory AddCardResponse.fromJson(Map<String, dynamic> json) =>
      _$AddCardResponseFromJson(json);
}
