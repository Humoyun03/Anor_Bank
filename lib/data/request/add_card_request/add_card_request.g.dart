// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCardRequestImpl _$$AddCardRequestImplFromJson(Map<String, dynamic> json) =>
    _$AddCardRequestImpl(
      json['pan'] as String,
      json['expired-year'] as String,
      json['expired-month'] as String,
      json['name'] as String,
    );

Map<String, dynamic> _$$AddCardRequestImplToJson(
        _$AddCardRequestImpl instance) =>
    <String, dynamic>{
      'pan': instance.pan,
      'expired-year': instance.expiredYear,
      'expired-month': instance.expiredMonth,
      'name': instance.name,
    };
