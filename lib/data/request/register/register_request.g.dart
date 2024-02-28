// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestImpl _$$RegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestImpl(
      json['phone'] as String,
      json['password'] as String,
      json['first-name'] as String,
      json['last-name'] as String,
      json['born-date'] as String,
      json['gender'] as int,
    );

Map<String, dynamic> _$$RegisterRequestImplToJson(
        _$RegisterRequestImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'password': instance.password,
      'first-name': instance.firstName,
      'last-name': instance.lastName,
      'born-date': instance.bornDate,
      'gender': instance.gender,
    };
