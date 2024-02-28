import 'package:anor_bank/data/request/add_card_request/add_card_request.dart';
import 'package:anor_bank/data/request/update_token/update_token.dart';
import 'package:anor_bank/data/response/add_card_response/add_card_response.dart';

import '../data/response/get_all_cards_response/get_all_cards_response.dart';
import '../data/response/get_total_balance/get_total_balance.dart';
import '../data/response/update_token_reponse/update_toker_reponse.dart';

abstract class CardRepository {
  Future<UpdateTokenResponse> updateToken(UpdateToken updateToken);

  Future<AddCardResponse> addCard(AddCardRequest addCardRequest, String token);

  Future<List<GetAllCardsResponse>> getAllCards();



}
