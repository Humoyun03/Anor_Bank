// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetHistoryImpl _$$GetHistoryImplFromJson(Map<String, dynamic> json) =>
    _$GetHistoryImpl(
      json['total_elements'] as int,
      json['total_pages'] as int,
      json['current_page'] as int,
      (json['child'] as List<dynamic>)
          .map((e) => Child.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetHistoryImplToJson(_$GetHistoryImpl instance) =>
    <String, dynamic>{
      'total_elements': instance.totalElements,
      'total_pages': instance.totalPages,
      'current_page': instance.currentPage,
      'child': instance.child.map((e) => e.toJson()).toList(),
    };

_$ChildImpl _$$ChildImplFromJson(Map<String, dynamic> json) => _$ChildImpl(
      json['type'] as String,
      json['from'] as String,
      json['to'] as String,
      json['amount'] as int,
      json['time'] as int,
    );

Map<String, dynamic> _$$ChildImplToJson(_$ChildImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'from': instance.from,
      'to': instance.to,
      'amount': instance.amount,
      'time': instance.time,
    };
