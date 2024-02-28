import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'set_pin_code_screen_event.dart';
part 'set_pin_code_screen_state.dart';

class SetPinCodeScreenBloc extends Bloc<SetPinCodeScreenEvent, SetPinCodeScreenState> {
  SetPinCodeScreenBloc() : super(SetPinCodeScreenInitial()) {
    on<AuthEvent>((event, emit) async {
      SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
      sharedPreferences.setBool("AUTH", true);
    });


  }
}
