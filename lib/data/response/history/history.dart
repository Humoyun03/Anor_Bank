import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'history.freezed.dart';
part 'history.g.dart';


/*
* "total-elements": 2,
    "total-pages": 1,
    "current-page": 1,
* */
@freezed
class GetHistory with _$GetHistory {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GetHistory(
  @JsonKey(name:"total-elements") int totalElements,
  @JsonKey(name:"total-pages")int totalPages,
  @JsonKey(name:"current-page")int currentPage,
  List<Child> child,
      ) = _GetHistory;

  factory GetHistory.fromJson(Map<String, dynamic> json) =>
      _$GetHistoryFromJson(json);
}

@freezed
class Child with _$Child {

  const factory Child(
  String type,
  String from,
  String to,
  int amount,
  int time,
      ) = _Child;

  factory Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);
}


