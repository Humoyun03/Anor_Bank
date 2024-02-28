part of 'home_bloc.dart';


class HomeState {


  int? totalBalanse;
  Status? status;


  HomeState({this.totalBalanse, this.status});

  HomeState copy({Status? status,int? totalBalanse}) {
    return HomeState(status: status ?? this.status,totalBalanse:totalBalanse ?? this.totalBalanse);
  }

}
