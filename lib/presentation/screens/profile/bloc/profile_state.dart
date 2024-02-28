part of 'profile_bloc.dart';



class ProfileState {

  FullInfo? fullInfo;
  Status? status;

  ProfileState({this.fullInfo, this.status});

  ProfileState copyWith({FullInfo? fullInfo,Status? status})=>
      ProfileState(fullInfo: fullInfo ?? this.fullInfo,status: status?? this.status);

}
