part of 'transaction_bloc.dart';

class TransactionState {
  Status? status;
  String? holder;
  FeeResponse? feeResponse;

  TransactionState({this.status, this.holder, this.feeResponse});

  TransactionState copy(
      {Status? status, String? holder, int? fee, FeeResponse? feeResponse}) {
    return TransactionState(
        status: status ?? this.status,
        holder: holder ?? this.holder,
        feeResponse: feeResponse ?? this.feeResponse
    );
  }
}
