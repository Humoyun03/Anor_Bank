// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeeRequestImpl _$$FeeRequestImplFromJson(Map<String, dynamic> json) =>
    _$FeeRequestImpl(
      json['sender-id'] as String,
      json['receiver'] as String,
      json['amount'] as int,
    );

Map<String, dynamic> _$$FeeRequestImplToJson(_$FeeRequestImpl instance) =>
    <String, dynamic>{
      'sender-id': instance.senderid,
      'receiver': instance.receiver,
      'amount': instance.amount,
    };
