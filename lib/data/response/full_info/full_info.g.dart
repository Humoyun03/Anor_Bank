// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FullInfoImpl _$$FullInfoImplFromJson(Map<String, dynamic> json) =>
    _$FullInfoImpl(
      json['first-name'] as String,
      json['last-name'] as String,
      json['phone'] as String,
      json['born-date'] as int,
      json['gender'] as int,
    );

Map<String, dynamic> _$$FullInfoImplToJson(_$FullInfoImpl instance) =>
    <String, dynamic>{
      'first-name': instance.firstname,
      'last-name': instance.lastname,
      'phone': instance.phone,
      'born-date': instance.bornDate,
      'gender': instance.gender,
    };
