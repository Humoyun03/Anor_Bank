import 'package:anor_bank/data/request/transfer_verify/transfer_verify.dart';
import 'package:anor_bank/domain/TransferRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data/model/enum/Status.dart';
import '../../../../di/app_di.dart';

part 'transaction_verify_event.dart';

part 'transaction_verify_state.dart';

class TransactionVerifyBloc
    extends Bloc<TransactionVerifyEvent, TransactionVerifyState> {
  TransactionVerifyBloc() : super(TransactionVerifyState()) {
    final repository = getIt<TransferRepository>();
    on<VerifyTransaction>((event, emit) async {
      emit(state.copy(status: Status.LOADING));
      final shared = getIt<SharedPreferences>();
      final token = shared.getString("TRANS") ?? "";
      final response = await repository
          .transferVerifyRequest(TransferVerifyRequest(token, event.code));
      emit(state.copy(status: Status.SUCCESS));
    });
  }
}
