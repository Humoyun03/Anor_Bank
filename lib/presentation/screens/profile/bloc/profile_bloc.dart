import 'dart:async';

import 'package:anor_bank/data/response/full_info/full_info.dart';
import 'package:anor_bank/di/app_di.dart';
import 'package:anor_bank/domain/HomeRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../data/model/enum/Status.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState()) {


    final repo = getIt<HomeRepository>();

    on<ProfileInitEvent>((event, emit)async {

      emit(state.copyWith(status: Status.LOADING));

      try{

        final response = await repo.getUserData();

        emit(state.copyWith(fullInfo:response,status: Status.SUCCESS));

      }catch(e){

        emit(state.copyWith(status: Status.ERROR));


      }


    });
  }
}
