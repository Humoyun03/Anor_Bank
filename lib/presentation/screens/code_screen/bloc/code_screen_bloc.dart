import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'code_screen_event.dart';
part 'code_screen_state.dart';

class CodeScreenBloc extends Bloc<CodeScreenEvent, CodeScreenState> {
  CodeScreenBloc() : super(CodeScreenInitial()) {
    on<CodeScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
