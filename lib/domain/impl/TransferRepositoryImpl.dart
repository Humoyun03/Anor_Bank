

import 'package:anor_bank/data/request/get_card_owner/get_card_owner.dart';
import 'package:anor_bank/data/request/transfer/transfer.dart';
import 'package:anor_bank/data/request/transfer_fee_request/fee_request.dart';
import 'package:anor_bank/data/request/transfer_resend/transfer_resend.dart';
import 'package:anor_bank/data/request/transfer_verify/transfer_verify.dart';
import 'package:anor_bank/data/response/fee_response/fee_response.dart';
import 'package:anor_bank/data/response/get_card_owner/get_card_owner.dart';
import 'package:anor_bank/data/response/history/history.dart';
import 'package:anor_bank/data/response/register/RegisterResponse.dart';
import 'package:anor_bank/data/response/transfer/transfer.dart';
import 'package:anor_bank/data/response/transfer_resend/transfer_resend_response.dart';
import 'package:anor_bank/data/response/transfer_verify/transfer_verify_response.dart';
import 'package:anor_bank/domain/TransferRepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/remote/api_client.dart';
import '../../di/app_di.dart';

class TransferRepositoryImpl extends TransferRepository{
  final api = getIt<ApiClient>();



  @override
  Future<TransferResponse> transferRequest(TransferRequest transferRequest) async{
    SharedPreferences sharedPreference =
    await SharedPreferences.getInstance();
    var token = sharedPreference.getString("TOKEN") ?? "";
    final response  = await api.transferCard(transferRequest, token);
    return response;
  }

  @override
  Future<TransferResendResponse> transferResendRequest(TransferResendRequest transferResendRequest)async {
    SharedPreferences sharedPreference =
    await SharedPreferences.getInstance();
    var token = sharedPreference.getString("TOKEN") ?? "";
    final response  = await api.transferResend(transferResendRequest, token);
    return response;
  }

  @override
  Future<TransferVerifyResponse> transferVerifyRequest(TransferVerifyRequest transferVerifyRequest)async {
    SharedPreferences sharedPreference =
        await SharedPreferences.getInstance();
    var token = sharedPreference.getString("TOKEN") ?? "";
    final response  = await api.transferVerify(transferVerifyRequest, token);
    return response;
  }

  @override
  Future<String> getCardOwnerResponse(GetCardOwnerRequest getCardOwnerRequest)async {
    SharedPreferences sharedPreference =
        await SharedPreferences.getInstance();
    var token = sharedPreference.getString("TOKEN") ?? "";
    final response  = await api.getCardOwner(getCardOwnerRequest, token);
    return response.toString();
  }

  @override
  Future<FeeResponse> getFee(FeeRequest feeRequest) async{
    SharedPreferences sharedPreference =
        await SharedPreferences.getInstance();
    var token = sharedPreference.getString("TOKEN") ?? "";
    final response = await api.getFee(feeRequest, token);

    return response;
  }

  @override
  Future<GetHistory> getHistoriya()async {

    print("Get History ga kirdi");

    SharedPreferences sharedPreference =
    await SharedPreferences.getInstance();
    var token = sharedPreference.getString("TOKEN") ?? "";



    final response = await api.getHistory(token,2,1);

    print("SIZEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE${response.child.length}");


    print("Get History response keldi");


    return response;

  }
}