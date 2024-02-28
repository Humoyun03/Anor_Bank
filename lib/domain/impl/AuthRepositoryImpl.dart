import 'package:anor_bank/data/remote/api_client.dart';
import 'package:anor_bank/data/request/login/login_request.dart';
import 'package:anor_bank/data/request/register/register_request.dart';
import 'package:anor_bank/data/response/login/LoginResponse.dart';
import 'package:anor_bank/data/response/register/RegisterResponse.dart';
import 'package:anor_bank/di/app_di.dart';
import 'package:anor_bank/domain/AuthRepository.dart';

import '../../data/request/login_verify/login_verify_request.dart';
import '../../data/request/register_verify/register_verify.dart';
import '../../data/response/login_verify/login_verify_response.dart';
import '../../data/response/register_verify/register_verify_resonse.dart';

class AuthRepositoryImpl extends AuthRepository {
  // final api = getIt<ApiClient>();

  final api = getIt<ApiClient>();

  @override
  Future<LoginResponse> loginUser(LoginRequest loginRequest) async {
    final response = await api.loginingUser(loginRequest);
    return response;
  }

  @override
  Future<RegisterResponse> registerUser(RegisterRequest registerRequest) async {
    final response = await api.registerUser(registerRequest);
    return response;
  }

  @override
  Future<LoginVerifyResponse> loginVerifyUser(
      LoginVerifyRequest loginVerifyRequest) async {
    final response = await api.loginVerifyUser(loginVerifyRequest);
    return response;
  }

  @override
  Future<RegisterVerifyResponse> registerVerifyUser(
      RegisterVerify registerVerify) async {
    final response = await api.registerVerifyUser(registerVerify);
    return response;
  }
}
