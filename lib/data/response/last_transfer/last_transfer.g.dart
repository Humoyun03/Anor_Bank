// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastTransferImpl _$$LastTransferImplFromJson(Map<String, dynamic> json) =>
    _$LastTransferImpl(
      json['type'] as String,
      json['from'] as String,
      json['to'] as String,
      json['amount'] as int,
      json['time'] as int,
    );

Map<String, dynamic> _$$LastTransferImplToJson(_$LastTransferImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'from': instance.from,
      'to': instance.to,
      'amount': instance.amount,
      'time': instance.time,
    };
