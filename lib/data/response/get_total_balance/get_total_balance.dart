import 'package:freezed_annotation/freezed_annotation.dart';


part 'get_total_balance.freezed.dart';

part 'get_total_balance.g.dart';

@freezed
class GetTotalBalance with _$GetTotalBalance {


  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GetTotalBalance(
  @JsonKey(name: "total-balance") int totalbalance
      ) = _GetTotalBalance;

  factory GetTotalBalance.fromJson(Map<String, dynamic> json) =>
      _$GetTotalBalanceFromJson(json);
}