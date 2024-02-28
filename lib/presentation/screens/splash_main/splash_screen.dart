import 'package:anor_bank/presentation/main/MainScreen.dart';
import 'package:anor_bank/presentation/screens/phone_authorization_screen/avtorizatsiya.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashMain extends StatefulWidget {
  const SplashMain({super.key});

  @override
  State<SplashMain> createState() => _SplashMainState();
}

class _SplashMainState extends State<SplashMain> {
  Future<void> navigation() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool isAuth = sharedPreferences.getBool("AUTH") ?? false;
    isAuth == true ? Future.delayed(const Duration(seconds: 2), () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const MainScreen()));
          })
        : Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Avtorizatsiya()));
  }

  @override
  void initState() {
    navigation();
    super.initState();
  }

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
            ],
          ),
        ));
  }
}
