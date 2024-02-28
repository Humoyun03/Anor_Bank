import 'package:anor_bank/data/remote/api_client.dart';
import 'package:anor_bank/data/request/add_card_request/add_card_request.dart';
import 'package:anor_bank/data/request/update_token/update_token.dart';
import 'package:anor_bank/data/response/add_card_response/add_card_response.dart';
import 'package:anor_bank/data/response/get_all_cards_response/get_all_cards_response.dart';
import 'package:anor_bank/data/response/update_token_reponse/update_toker_reponse.dart';
import 'package:anor_bank/di/app_di.dart';
import 'package:anor_bank/domain/CardRepository.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardRepositoryImpl extends CardRepository {
  final network = getIt<ApiClient>();

  @override
  Future<UpdateTokenResponse> updateToken(UpdateToken updateToken) async {
    final response = await network.updateToken(updateToken);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("TOKEN", response.accessToken);
    return response;
  }

  @override
  Future<AddCardResponse> addCard(
      AddCardRequest addCardRequest, String token) async {
    print("----------TOKEN :$token");
    final response = await network.addCard(addCardRequest, token);
    return response;
  }

  @override
  Future<List<GetAllCardsResponse>> getAllCards() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String token = sharedPreferences.getString("TOKEN") ?? "";
    List<GetAllCardsResponse> getAllCardsResponse = [];
    try {
      getAllCardsResponse = await network.getAllCards("Bearer $token");
      print("cards size: ${getAllCardsResponse.length}");
    } on DioException catch (e) {
      print("message getALl: ${e.message}");
    }

    return getAllCardsResponse;
  }
}
