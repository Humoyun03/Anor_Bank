import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'add_card_request.freezed.dart';
part 'add_card_request.g.dart';

@freezed
class AddCardRequest with _$AddCardRequest {
  const factory AddCardRequest(
      String pan,
      @JsonKey(name: "expired-year")
      String expiredYear,
      @JsonKey(name: "expired-month")
      String expiredMonth,
      String name,
      ) = _AddCardRequest;

  factory AddCardRequest.fromJson(Map<String, dynamic> json) =>
      _$AddCardRequestFromJson(json);
}