part of 'add_card_screen_bloc.dart';

@immutable
abstract class AddCardScreenEvent {}

class AddingCard extends AddCardScreenEvent {
  AddCardRequest addCardRequest;

  AddingCard(this.addCardRequest);
}
