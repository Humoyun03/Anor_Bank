part of 'monitoring_bloc.dart';


class MonitoringState {

  List<LastTransfer>? list;
  Status? status;

  MonitoringState({this.list,this.status});

  MonitoringState copyWith({List<LastTransfer>? list,Status? status})=>
      MonitoringState(list:list ?? this.list,status: status ?? this.status);


}
