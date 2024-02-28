// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferRequestImpl _$$TransferRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferRequestImpl(
      json['type'] as String,
      json['sender-id'] as String,
      json['receiver-pan'] as String,
      json['amount'] as int,
    );

Map<String, dynamic> _$$TransferRequestImplToJson(
        _$TransferRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'sender-id': instance.senderId,
      'receiver-pan': instance.receiverPan,
      'amount': instance.amount,
    };
