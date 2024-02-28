import 'package:anor_bank/presentation/main/MainScreen.dart';
import 'package:anor_bank/presentation/main/MainScreen.dart';
import 'package:anor_bank/presentation/main/MainScreen.dart';
import 'package:anor_bank/presentation/screens/home_page/home_page.dart';
import 'package:anor_bank/presentation/screens/phone_authorization_screen/avtorizatsiya.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashLanguage extends StatelessWidget {
  const SplashLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFB50047),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/anor.png", width: 150),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Добро пожаловать в',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8999999761581421),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Anorbank',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.949999988079071),
                  fontSize: 24,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Выберите язык приложения',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8999999761581421),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                      onTap: () async {
                        SharedPreferences sharedPreferences =
                            await SharedPreferences.getInstance();
                        bool isExist=sharedPreferences.getBool("AUTH") ?? false;

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => !isExist ? Avtorizatsiya() : MainScreen()));
                      },
                      child: buildLanguageOption("🇺🇿 Uz")),
                  InkWell(
                      onTap: () async {
                        SharedPreferences sharedPreferences =
                        await SharedPreferences.getInstance();
                        bool isExist=sharedPreferences.getBool("AUTH") ?? false;

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => !isExist ?  Avtorizatsiya() : MainScreen()));
                      },
                      child: buildLanguageOption("🇷🇺 Ru")),
                  InkWell(
                      onTap: () async {
                        SharedPreferences sharedPreferences =
                        await SharedPreferences.getInstance();
                        bool isExist=sharedPreferences.getBool("AUTH") ?? false;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => !isExist ?  Avtorizatsiya() : MainScreen()));
                      },
                      child: buildLanguageOption("🇬🇧 Eng")),
                ],
              )
            ],
          ),
        ));
  }

  Widget buildLanguageOption(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 90,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFFF1270),
        ),
        child: Opacity(
          opacity: 0.95,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.95),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
