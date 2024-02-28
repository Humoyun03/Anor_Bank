import 'package:anor_bank/data/request/add_card_request/add_card_request.dart';
import 'package:anor_bank/di/app_di.dart';
import 'package:anor_bank/domain/CardRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/model/enum/Status.dart';

part 'add_card_screen_event.dart';

part 'add_card_screen_state.dart';

class AddCardScreenBloc extends Bloc<AddCardScreenEvent, AddCardScreenState> {


  AddCardScreenBloc() : super(AddCardScreenState()) {
    final _repository = getIt<CardRepository>();
    on<AddingCard>((event, emit) async {
      emit(state.copy(status: Status.LOADING));
      final shared = getIt<SharedPreferences>();
      final token = shared.getString("TOKEN") ?? "";
      try {
        print("adding card");
        final response = await _repository.addCard(event.addCardRequest, token);
        emit(state.copy(status: Status.SUCCESS));
      }
      on DioError catch(e){
        print(e.message);
      }
      catch (e) {
        print("----error adding card: ${e}");
        emit(state.copy(status: Status.ERROR));
      }
    });
  }
}
