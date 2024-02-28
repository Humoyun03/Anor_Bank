import 'package:freezed_annotation/freezed_annotation.dart';


part 'historiy_data.freezed.dart';

part 'historiy_data.g.dart';


@freezed
class HistoriyData with _$HistoriyData {

  const factory HistoriyData(

      String type,
      String from,
      String to,
      int amount,
      int time,

      ) = _HistoriyData;

  factory HistoriyData.fromJson(Map<String, dynamic> json) =>
      _$HistoriyDataFromJson(json);
}