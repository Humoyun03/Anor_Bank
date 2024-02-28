import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';


import 'package:json_annotation/json_annotation.dart';

part 'update_token.freezed.dart';
part 'update_token.g.dart';

@freezed
class UpdateToken with _$UpdateToken {
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory UpdateToken(String raw) = _UpdateToken;

  factory UpdateToken.fromJson(Map<String, dynamic> json) =>
      _$UpdateTokenFromJson(json);
}