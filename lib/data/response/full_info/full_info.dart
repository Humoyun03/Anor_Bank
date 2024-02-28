import 'package:freezed_annotation/freezed_annotation.dart';


part 'full_info.freezed.dart';

part 'full_info.g.dart';


@freezed
class FullInfo with _$FullInfo {


  /*
  *
  * "first-name": "Muhammadali",
    "last-name": "Rahimberganov",
    "phone": "+998993946280",
    "born-date": 970404172750,
    "gender": 0
    */
  const factory FullInfo(
      @JsonKey(name: "first-name") String firstname,
      @JsonKey(name: "last-name")String lastname,
      String phone ,
      @JsonKey(name : "born-date")int bornDate ,
      int gender
      ) = _FullInfo;

  factory FullInfo.fromJson(Map<String, dynamic> json) =>
      _$FullInfoFromJson(json);

}