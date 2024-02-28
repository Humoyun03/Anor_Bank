import 'package:anor_bank/data/request/login/login_request.dart';
import 'package:anor_bank/data/request/register/register_request.dart';
import 'package:anor_bank/di/app_di.dart';
import 'package:anor_bank/domain/AuthRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/model/enum/Status.dart';

part 'phone_authorization_screen_event.dart';

part 'phone_authorization_screen_state.dart';

class PhoneAuthorizationScreenBloc
    extends Bloc<PhoneAuthorizationScreenEvent, PhoneAuthorizationScreenState> {
  PhoneAuthorizationScreenBloc() : super(PhoneAuthorizationScreenState()) {
    final repository = getIt<AuthRepository>();
    on<RegisterUser>((event, emit) async {
      print("bloc reg");
      emit(state.copy(status: Status.LOADING));
      final response = await repository.registerUser(event.registerRequest);
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      if (response.token.isNotEmpty) {
        print("Register success");
        emit(state.copy(status: Status.SUCCESS));
        sharedPreferences.setString("TOKEN", response.token);
        sharedPreferences.setString("TYPE", "register");
      } else {
        emit(state.copy(status: Status.ERROR));
      }
    });
    on<LoginUser>((event, emit) async {
      print("bloca login");
      emit(state.copy(status: Status.LOADING));
      final response = await repository.loginUser(event.loginRequest);
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      if (response.token.isNotEmpty) {
        print("Login success");
        emit(state.copy(status: Status.SUCCESS));
        sharedPreferences.setString("TOKEN", response.token);
        sharedPreferences.setString("TYPE", "login");
      } else {
        emit(state.copy(status: Status.ERROR));
      }
    });
  }
}
