import 'dart:async';

import 'package:anor_bank/data/model/enum/Status.dart';
import 'package:anor_bank/di/app_di.dart';
import 'package:anor_bank/domain/HomeRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final repo = getIt<HomeRepository>();

  HomeBloc() : super(HomeState()) {

    on<HomeInitEvent>((event, emit)async{

      emit(state.copy(status: Status.LOADING));

      try{

        final response = await repo.getTotalBalanse();

        print("-------------------------------");

        print(response.totalbalance);

        emit(state.copy(status: Status.SUCCESS,totalBalanse: response.totalbalance));

      }catch(e){
        emit(state.copy(status: Status.ERROR));
      }

    });
  }
}
