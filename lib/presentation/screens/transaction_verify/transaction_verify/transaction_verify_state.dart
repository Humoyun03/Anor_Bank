part of 'transaction_verify_bloc.dart';

 class TransactionVerifyState {
   Status? status;

   TransactionVerifyState({this.status});

   TransactionVerifyState copy({Status? status}) {
     return TransactionVerifyState(status: status ?? this.status);
   }
 }
