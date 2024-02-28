import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pin_code_screen_event.dart';
part 'pin_code_screen_state.dart';

class PinCodeScreenBloc extends Bloc<PinCodeScreenEvent, PinCodeScreenState> {
  PinCodeScreenBloc() : super(PinCodeScreenInitial()) {
    on<PinCodeScreenEvent>((event, emit) {

    });
  }
}
