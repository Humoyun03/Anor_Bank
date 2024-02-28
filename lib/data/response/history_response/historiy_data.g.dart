// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historiy_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoriyDataImpl _$$HistoriyDataImplFromJson(Map<String, dynamic> json) =>
    _$HistoriyDataImpl(
      json['type'] as String,
      json['from'] as String,
      json['to'] as String,
      json['amount'] as int,
      json['time'] as int,
    );

Map<String, dynamic> _$$HistoriyDataImplToJson(_$HistoriyDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'from': instance.from,
      'to': instance.to,
      'amount': instance.amount,
      'time': instance.time,
    };
