import 'package:anor_bank/data/response/history/history.dart';
import 'package:anor_bank/data/response/last_transfer/last_transfer.dart';
import 'package:anor_bank/di/app_di.dart';
import 'package:anor_bank/domain/HomeRepository.dart';
import 'package:anor_bank/domain/TransferRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../data/model/enum/Status.dart';

part 'monitoring_event.dart';
part 'monitoring_state.dart';

class MonitoringBloc extends Bloc<MonitoringEvent, MonitoringState> {


  MonitoringBloc() : super(MonitoringState()) {
    final repo = getIt<HomeRepository>();

    on<MonitoringInitEvent>((event, emit) async {
      emit(state.copyWith(status: Status.LOADING));

      try {
        final response = await repo.getLastTransfer();
        emit(state.copyWith(list: response, status: Status.SUCCESS));
      } catch (e) {
        emit(state.copyWith(status: Status.ERROR));
      }
    });
  }
}
