import 'package:anor_bank/domain/CardRepository.dart';
import 'package:anor_bank/domain/HomeRepository.dart';
import 'package:anor_bank/domain/TransferRepository.dart';
import 'package:anor_bank/domain/impl/CardRepositoryImpl.dart';
import 'package:anor_bank/domain/impl/HomeRepositoryImpl.dart';
import 'package:anor_bank/domain/impl/TransferRepositoryImpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/local/shared/SharedPref.dart';
import '../data/local/shared/impl/SharedPrefImpl.dart';
import '../data/remote/api_client.dart';
import '../domain/AuthRepository.dart';
import '../domain/impl/AuthRepositoryImpl.dart';
import '../network/network.dart';

final getIt = GetIt.instance;


final dio = Dio(BaseOptions(
    baseUrl: 'http://195.158.16.140/mobile-bank/v1/',
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    contentType: 'application/json',
    receiveDataWhenStatusError: true));




Future<void> setUp() async {
  getIt.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());
  getIt.registerSingleton<SharedPref>(SharedPrefImpl());
  getIt.registerSingleton<ApiClient>(ApiClient(Network.getDio()));
  getIt.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  getIt.registerSingleton<CardRepository>(CardRepositoryImpl());
  getIt.registerSingleton<TransferRepository>(TransferRepositoryImpl());
  getIt.registerSingleton<HomeRepository>(HomeRepositoryImpl());
}
