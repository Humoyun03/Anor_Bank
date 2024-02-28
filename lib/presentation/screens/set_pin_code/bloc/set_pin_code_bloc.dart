import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'set_pin_code_event.dart';
part 'set_pin_code_state.dart';

class SetPinCodeBloc extends Bloc<SetPinCodeEvent, SetPinCodeState> {
  SetPinCodeBloc() : super(SetPinCodeInitial()) {
    on<SetPinCodeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
