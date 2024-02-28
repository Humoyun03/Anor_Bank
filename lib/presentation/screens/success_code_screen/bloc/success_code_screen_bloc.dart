import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'success_code_screen_event.dart';
part 'success_code_screen_state.dart';

class SuccessCodeScreenBloc extends Bloc<SuccessCodeScreenEvent, SuccessCodeScreenState> {
  SuccessCodeScreenBloc() : super(SuccessCodeScreenInitial()) {
    on<SuccessCodeScreenEvent>((event, emit) {

    });
  }
}
