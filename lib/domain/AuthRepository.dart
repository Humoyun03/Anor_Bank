import 'package:anor_bank/data/request/login/login_request.dart';
import 'package:anor_bank/data/request/register/register_request.dart';
import 'package:anor_bank/data/response/get_all_cards_response/get_all_cards_response.dart';
import 'package:anor_bank/data/response/login/LoginResponse.dart';
import 'package:anor_bank/data/response/register/RegisterResponse.dart';

import '../data/request/login_verify/login_verify_request.dart';
import '../data/request/register_verify/register_verify.dart';
import '../data/response/login_verify/login_verify_response.dart';
import '../data/response/register_verify/register_verify_resonse.dart';

abstract class AuthRepository {
  Future<LoginResponse> loginUser(LoginRequest loginRequest);

  Future<RegisterResponse> registerUser(RegisterRequest registerRequest);

  Future<LoginVerifyResponse> loginVerifyUser(
      LoginVerifyRequest loginVerifyRequest);

  Future<RegisterVerifyResponse> registerVerifyUser(
      RegisterVerify registerVerify);


}
