part of 'phone_authorization_screen_bloc.dart';

class PhoneAuthorizationScreenState {
  Status? status;

  PhoneAuthorizationScreenState({this.status});

  PhoneAuthorizationScreenState copy({Status? status}) {
    return PhoneAuthorizationScreenState(status: status ?? this.status);
  }
}
