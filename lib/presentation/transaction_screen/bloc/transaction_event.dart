part of 'transaction_bloc.dart';


abstract class TransactionEvent {}

class TransactionEventInitial extends TransactionEvent{
  String type;
  String senderId;
  String receiverPan;
  int amount;

  TransactionEventInitial(
      this.type, this.senderId, this.receiverPan, this.amount);
}
class HolderEvent extends TransactionEvent{

  String card;

  HolderEvent(this.card);
}

class TransferButtonClick extends TransactionEvent{

  FeeRequest feeRequest;

  TransferButtonClick(this.feeRequest);
}
