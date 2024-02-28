


import 'package:anor_bank/data/request/get_card_owner/get_card_owner.dart';
import 'package:anor_bank/data/request/transfer_fee_request/fee_request.dart';
import 'package:anor_bank/data/request/transfer_resend/transfer_resend.dart';
import 'package:anor_bank/data/request/transfer_verify/transfer_verify.dart';
import 'package:anor_bank/data/response/get_card_owner/get_card_owner.dart';
import 'package:anor_bank/data/response/transfer/transfer.dart';
import 'package:anor_bank/data/response/transfer_resend/transfer_resend_response.dart';
import 'package:anor_bank/data/response/transfer_verify/transfer_verify_response.dart';

import '../data/request/transfer/transfer.dart';
import '../data/response/fee_response/fee_response.dart';
import '../data/response/history/history.dart';
import '../data/response/register/RegisterResponse.dart';

abstract class TransferRepository{

  Future<TransferResponse> transferRequest(TransferRequest transferRequest);
  Future<TransferVerifyResponse> transferVerifyRequest(TransferVerifyRequest transferVerifyRequest);
  Future<TransferResendResponse> transferResendRequest(TransferResendRequest transferResendRequest);
  Future<String> getCardOwnerResponse(GetCardOwnerRequest getCardOwnerRequest);
  Future<FeeResponse>getFee(FeeRequest feeRequest);

  Future<GetHistory> getHistoriya();

}
