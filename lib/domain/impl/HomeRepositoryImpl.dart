

import 'package:anor_bank/data/request/get_card_owner/get_card_owner.dart';
import 'package:anor_bank/data/request/transfer/transfer.dart';
import 'package:anor_bank/data/request/transfer_resend/transfer_resend.dart';
import 'package:anor_bank/data/request/transfer_verify/transfer_verify.dart';
import 'package:anor_bank/data/response/full_info/full_info.dart';
import 'package:anor_bank/data/response/get_card_owner/get_card_owner.dart';
import 'package:anor_bank/data/response/get_total_balance/get_total_balance.dart';
import 'package:anor_bank/data/response/last_transfer/last_transfer.dart';
import 'package:anor_bank/data/response/register/RegisterResponse.dart';
import 'package:anor_bank/data/response/transfer/transfer.dart';
import 'package:anor_bank/data/response/transfer_resend/transfer_resend_response.dart';
import 'package:anor_bank/data/response/transfer_verify/transfer_verify_response.dart';
import 'package:anor_bank/domain/TransferRepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/remote/api_client.dart';
import '../../di/app_di.dart';
import '../HomeRepository.dart';

class HomeRepositoryImpl extends HomeRepository{
  final api = getIt<ApiClient>();


  @override
  Future<GetTotalBalance> getTotalBalanse() async{
    SharedPreferences sharedPreference =
        await SharedPreferences.getInstance();
    var token = sharedPreference.getString("TOKEN") ?? "";
    final response = api.getAllTotalBalanse(token);
    return response;
  }

  @override
  Future<List<LastTransfer>> getLastTransfer()async {
    SharedPreferences sharedPreference =
        await SharedPreferences.getInstance();
    var token = sharedPreference.getString("TOKEN") ?? "";
    final response = api.getAllLastTransfer(token);
    return response;
  }

  @override
  Future<FullInfo> getUserData() async{
    SharedPreferences sharedPreference =
        await SharedPreferences.getInstance();
    var token = sharedPreference.getString("TOKEN") ?? "";
    final response = api.getUserData(token);
    return response;
  }


}
