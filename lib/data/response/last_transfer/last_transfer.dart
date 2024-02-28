import 'package:freezed_annotation/freezed_annotation.dart';


part 'last_transfer.freezed.dart';

part 'last_transfer.g.dart';


@freezed
class LastTransfer with _$LastTransfer {


  const factory LastTransfer(
      String type,
      String from,
      String to,
      int amount,
      int time,
      ) = _LastTransfer;


  factory LastTransfer.fromJson(Map<String, dynamic> json) =>
      _$LastTransferFromJson(json);
}