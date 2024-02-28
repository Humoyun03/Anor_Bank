part of 'add_card_screen_bloc.dart';

class AddCardScreenState {
  Status? status;

  AddCardScreenState({this.status});

  AddCardScreenState copy({Status? status}) {
    return AddCardScreenState(status: status ?? this.status);
  }
}
