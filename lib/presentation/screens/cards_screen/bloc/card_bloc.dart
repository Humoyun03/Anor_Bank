import 'package:anor_bank/data/response/get_all_cards_response/get_all_cards_response.dart';
import 'package:anor_bank/di/app_di.dart';
import 'package:anor_bank/domain/CardRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../data/model/enum/Status.dart';

part 'card_event.dart';

part 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardInitial> {
  CardBloc() : super(CardInitial()) {
    final repository = getIt<CardRepository>();
    on<CardInitEvent>((event, emit) async {
      emit(state.copyWith(status: Status.LOADING));
      final response = await repository.getAllCards();
      emit(state.copyWith(status: Status.SUCCESS, allCardsList: response));
    });
  }
}
