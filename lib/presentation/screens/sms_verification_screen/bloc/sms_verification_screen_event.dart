part of 'sms_verification_screen_bloc.dart';

@immutable
abstract class SmsVerificationScreenEvent {}


class VerifyUser extends SmsVerificationScreenEvent{
  String code;

  VerifyUser(this.code);
}