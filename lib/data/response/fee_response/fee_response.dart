import 'package:freezed_annotation/freezed_annotation.dart';


part 'fee_response.freezed.dart';

part 'fee_response.g.dart';


@freezed
class FeeResponse with _$FeeResponse {


  const factory FeeResponse(
      String fee,
      int amount,
      ) = _FeeResponse;


  factory FeeResponse.fromJson(Map<String, dynamic> json) =>
      _$FeeResponseFromJson(json);


}