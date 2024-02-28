
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


import 'package:json_annotation/json_annotation.dart';

part 'update_toker_reponse.freezed.dart';
part 'update_toker_reponse.g.dart';

@freezed
class UpdateTokenResponse with _$UpdateTokenResponse {
  const factory UpdateTokenResponse(
      String accessToken,
      String refreshToken
      ) = _UpdateTokenResponse;

  factory UpdateTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateTokenResponseFromJson(json);
}

