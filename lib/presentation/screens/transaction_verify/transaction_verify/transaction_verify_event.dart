part of 'transaction_verify_bloc.dart';

abstract class TransactionVerifyEvent {}


class VerifyTransaction extends TransactionVerifyEvent{
  String code;

  VerifyTransaction(this.code);
}