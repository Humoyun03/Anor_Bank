part of 'card_bloc.dart';


class CardInitial{
  List<GetAllCardsResponse?>? allCardsList;

  Status? status;


  CardInitial({this.allCardsList, this.status});

  CardInitial copyWith({List<GetAllCardsResponse>? allCardsList,Status? status}) =>
      CardInitial(
    allCardsList: allCardsList ?? allCardsList,status: status?? this.status
  );
}


