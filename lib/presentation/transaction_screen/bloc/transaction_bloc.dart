import 'package:anor_bank/data/request/get_card_owner/get_card_owner.dart';
import 'package:anor_bank/data/request/transfer_fee_request/fee_request.dart';
import 'package:anor_bank/domain/TransferRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/model/enum/Status.dart';
import '../../../data/request/transfer/transfer.dart';
import '../../../data/response/fee_response/fee_response.dart';
import '../../../di/app_di.dart';

part 'transaction_event.dart';

part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(TransactionState()) {
    final repository = getIt<TransferRepository>();

    on<TransactionEventInitial>((event, emit) async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      emit(state.copy(status: Status.LOADING));
      final response = await repository.transferRequest(TransferRequest(
          event.type, event.senderId, event.receiverPan, event.amount));
      sharedPreferences.setString("TRANS", response.token);
      emit(state.copy(status: Status.SUCCESS));
    });

    on<HolderEvent>((event, emit) async {
      emit(state.copy(status: Status.LOADING));
      emit(state.copy(
          holder: await repository
              .getCardOwnerResponse(GetCardOwnerRequest(event.card))));
      emit(state.copy(status: Status.SUCCESS));
    });

    on<TransferButtonClick>((event, emit) async {
      emit(state.copy(status: Status.LOADING));

      try {
        emit(state.copy(
            status: Status.SUCCESS,
            feeResponse: await repository.getFee(FeeRequest(
                event.feeRequest?.senderid ?? "",
                event.feeRequest?.receiver ?? "",
                event.feeRequest?.amount ?? 0
            ))
        ));
      } catch (e) {
        print(e);
      }
    });
  }
}
