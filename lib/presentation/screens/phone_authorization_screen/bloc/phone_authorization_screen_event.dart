part of 'phone_authorization_screen_bloc.dart';

@immutable
abstract class PhoneAuthorizationScreenEvent {}

class RegisterUser extends PhoneAuthorizationScreenEvent {
  RegisterRequest registerRequest;

  RegisterUser(this.registerRequest);
}

class LoginUser extends PhoneAuthorizationScreenEvent {
  LoginRequest loginRequest;

  LoginUser(this.loginRequest);
}
