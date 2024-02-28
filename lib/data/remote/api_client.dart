import 'package:anor_bank/data/request/add_card_request/add_card_request.dart';
import 'package:anor_bank/data/request/get_card_owner/get_card_owner.dart';
import 'package:anor_bank/data/request/login/login_request.dart';
import 'package:anor_bank/data/request/login_verify/login_verify_request.dart';
import 'package:anor_bank/data/request/register/register_request.dart';
import 'package:anor_bank/data/request/register_verify/register_verify.dart';
import 'package:anor_bank/data/request/transfer/transfer.dart';
import 'package:anor_bank/data/request/transfer_fee_request/fee_request.dart';
import 'package:anor_bank/data/request/transfer_resend/transfer_resend.dart';
import 'package:anor_bank/data/request/transfer_verify/transfer_verify.dart';
import 'package:anor_bank/data/request/update_token/update_token.dart';
import 'package:anor_bank/data/response/add_card_response/add_card_response.dart';
import 'package:anor_bank/data/response/get_all_cards_response/get_all_cards_response.dart';
import 'package:anor_bank/data/response/get_card_owner/get_card_owner.dart';
import 'package:anor_bank/data/response/last_transfer/last_transfer.dart';
import 'package:anor_bank/data/response/login/LoginResponse.dart';
import 'package:anor_bank/data/response/login_verify/login_verify_response.dart';
import 'package:anor_bank/data/response/register/RegisterResponse.dart';
import 'package:anor_bank/data/response/register_verify/register_verify_resonse.dart';
import 'package:anor_bank/data/response/transfer/transfer.dart';
import 'package:anor_bank/data/response/transfer_resend/transfer_resend_response.dart';
import 'package:anor_bank/data/response/transfer_verify/transfer_verify_response.dart';
import 'package:anor_bank/data/response/update_token_reponse/update_toker_reponse.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../response/fee_response/fee_response.dart';
import '../response/full_info/full_info.dart';
import '../response/get_total_balance/get_total_balance.dart';
import '../response/history/history.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('auth/sign-in')
  Future<LoginResponse> loginingUser(@Body() LoginRequest loginRequest);

  @POST('auth/sign-up')
  Future<RegisterResponse> registerUser(
      @Body() RegisterRequest registerRequest);

  @POST('auth/sign-in/verify')
  Future<LoginVerifyResponse> loginVerifyUser(
      @Body() LoginVerifyRequest loginVerifyRequest);

  @POST('auth/sign-up/verify')
  Future<RegisterVerifyResponse> registerVerifyUser(
      @Body() RegisterVerify registerVerify);

  @POST('auth/update-token')
  Future<UpdateTokenResponse> updateToken(@Body() UpdateToken updateToken);

  @POST('card')
  Future<AddCardResponse> addCard(
    @Body() AddCardRequest addCardRequest,
    @Header('Authorization') String token,
  );

  @GET('card')
  Future<List<GetAllCardsResponse>> getAllCards(
    @Header('Authorization') String token,
  );

  @POST('transfer/transfer')
  Future<TransferResponse> transferCard(
    @Body() TransferRequest transferRequest,
    @Header('Authorization') String token,
  );

  @POST('transfer/transfer/verify')
  Future<TransferVerifyResponse> transferVerify(
    @Body() TransferVerifyRequest transferVerifyRequest,
    @Header('Authorization') String token,
  );

  @POST('transfer/transfer/resend')
  Future<TransferResendResponse> transferResend(
    @Body() TransferResendRequest transferResendRequest,
    @Header('Authorization') String token,
  );

  @GET("transfer/history")
  Future<GetHistory> getHistory(
      @Header('Authorization') String token,
      @Query('size') int size,
      @Query('current-page') int currentPage,
      );


  @POST('card-owner')
  Future<GetCardOwnerResponse> getCardOwner(
      @Body() GetCardOwnerRequest getCardOwnerRequest,
      @Header('Authorization') String token,
      );


  @GET("home/total-balance")
  Future<GetTotalBalance> getAllTotalBalanse(
  @Header('Authorization') String token,
  );


  @POST("transfer/fee")
  Future<FeeResponse> getFee(
      @Body() FeeRequest feeRequest,
      @Header('Authorization') String token,
      );

  @GET("home/last-transfers")
  Future<List<LastTransfer>>getAllLastTransfer(
      @Header('Authorization') String token,
      );

  @GET("home/user-info/details")
  Future<FullInfo> getUserData(
      @Header('Authorization') String token,
      );

}
