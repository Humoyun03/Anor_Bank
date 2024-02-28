part of 'sms_verification_screen_bloc.dart';

class SmsVerificationScreenState {
  Status? status;

  SmsVerificationScreenState({this.status});

  SmsVerificationScreenState copy({Status? status}) {
    return SmsVerificationScreenState(status: status ?? this.status);
  }
}
