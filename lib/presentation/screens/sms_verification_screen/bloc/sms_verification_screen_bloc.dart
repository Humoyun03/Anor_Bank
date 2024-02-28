import 'package:anor_bank/data/request/login_verify/login_verify_request.dart';
import 'package:anor_bank/data/request/register_verify/register_verify.dart';
import 'package:anor_bank/di/app_di.dart';
import 'package:anor_bank/domain/AuthRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/model/enum/Status.dart';

part 'sms_verification_screen_event.dart';

part 'sms_verification_screen_state.dart';

class SmsVerificationScreenBloc
    extends Bloc<SmsVerificationScreenEvent, SmsVerificationScreenState> {
  SmsVerificationScreenBloc() : super(SmsVerificationScreenState()) {


    final repository = getIt<AuthRepository>();
    on<VerifyUser>((event, emit) async {

      SharedPreferences sharedPreference =
          await SharedPreferences.getInstance();
      var token = sharedPreference.getString("TOKEN") ?? "";
      var status = sharedPreference.getString("TYPE") ?? "";
      if (status == "register") {
        emit(state.copy(status: Status.LOADING));
        final response = await repository.registerVerifyUser(RegisterVerify(token, event.code));
        sharedPreference.setString("TOKEN", response.accessToken);
        sharedPreference.setString("REFRESH", response.refreshToken);
        sharedPreference.setBool("AUTH", true);
        emit(state.copy(status: Status.SUCCESS));
      } else {
        emit(state.copy(status: Status.LOADING));
        final response = await repository
            .loginVerifyUser(LoginVerifyRequest(token, event.code));
        sharedPreference.setString("TOKEN", response.accessToken);
        sharedPreference.setString("REFRESH", response.refreshToken);
        sharedPreference.setBool("AUTH", true);
        emit(state.copy(status: Status.SUCCESS));
      }
    });
  }
}
