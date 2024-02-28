import 'package:alice/alice.dart';
import 'package:anor_bank/network/network.dart';
import 'package:anor_bank/presentation/main/MainScreen.dart';
import 'package:anor_bank/presentation/screens/splash_screen/splash_lang.dart';
import 'package:anor_bank/presentation/screens/transaction_verify/transaction_verify.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'di/app_di.dart';
import 'lang/codegen_loader.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setUp();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('uz'), Locale('ru')],
      path: 'assets/translation',
      fallbackLocale: const Locale('uz'),
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Network.alice.getNavigatorKey(),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      initialRoute: '/',
      routes: {
        '/':  (context) => const SplashLanguage(),
        'main':(context)=> const MainScreen(),
        'transfer':(context)=> const TransactionVerify(),
      },
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
    );
  }
}
