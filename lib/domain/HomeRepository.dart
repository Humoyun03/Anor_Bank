


import 'package:anor_bank/data/response/last_transfer/last_transfer.dart';

import '../data/response/full_info/full_info.dart';
import '../data/response/get_total_balance/get_total_balance.dart';

abstract class HomeRepository {


  Future<GetTotalBalance> getTotalBalanse();
  Future<List<LastTransfer>>getLastTransfer();
  Future<FullInfo> getUserData();

  
}
