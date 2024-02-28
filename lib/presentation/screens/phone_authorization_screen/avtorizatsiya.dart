import 'package:anor_bank/data/request/login/login_request.dart';
import 'package:anor_bank/data/request/register/register_request.dart';
import 'package:anor_bank/presentation/screens/phone_authorization_screen/bloc/phone_authorization_screen_bloc.dart';
import 'package:anor_bank/presentation/screens/sms_verification_screen/sms_tasdiqlash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/model/enum/Status.dart';

class Avtorizatsiya extends StatefulWidget {
  const Avtorizatsiya({super.key});

  @override
  State<Avtorizatsiya> createState() => _AvtorizatsiyaState();
}

class _AvtorizatsiyaState extends State<Avtorizatsiya> {
  bool isChecked = false;

  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final bloc = PhoneAuthorizationScreenBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<PhoneAuthorizationScreenBloc,
          PhoneAuthorizationScreenState>(
        listener: (context, state) {
          if (state.status == Status.SUCCESS) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const SMSniTasdiqlash()));
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Image.asset(
                        'assets/images/avtorizatsia.png',
                        height: 150,
                        width: 160,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Avtorizatsiya',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(fontSize: 26),
                            color: Color(0xff505d6c),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 18, right: 18),
                      child: Center(
                        child: Text(
                          'Akkaunt yaratish yoki mavjud akkauntga kirish uchun telefon raqamingizni kiriting',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: 14),
                            color: Color(0xff505d6c),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        color: Color(
                                            0xfff3f6f5), // Container rangi
                                      ),
                                      child: TextField(
                                        controller: phoneController,
                                        onChanged: (str) {
                                          if (str.length > 9) {
                                            phoneController.text =
                                                str.substring(0, 9);
                                          }
                                          if (str.length == 9 ||
                                              str.length == 8) {
                                            setState(() {});
                                          }
                                        },
                                        keyboardType: TextInputType.phone,
                                        decoration: InputDecoration(
                                          prefixText: "+998 ",
                                          border: InputBorder.none,
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              'assets/images/uz_flag.png',
                                              width: 36,
                                              height: 36,
                                              fit: BoxFit.scaleDown,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20, top:20),
                                  child: Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10.0),
                                        color: Color(
                                            0xfff3f6f5), // Container rangi
                                      ),
                                      child: TextField(
                                        controller: passwordController,
                                        onChanged: (str) {
                                          if (str.length > 9) {
                                            passwordController.text =
                                                str.substring(0, 9);
                                          }
                                          if (str.length == 9 ||
                                              str.length == 8) {
                                            setState(() {});
                                          }
                                        },
                                        keyboardType: TextInputType.visiblePassword,
                                        decoration: InputDecoration(
                                          label: const Text("password"),
                                          border: InputBorder.none,
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              'assets/images/uz_flag.png',
                                              width: 36,
                                              height: 36,
                                              fit: BoxFit.scaleDown,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 4),
                                        child: Checkbox(
                                          activeColor: Colors.red,
                                          checkColor: Colors.white,
                                          value: isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Davom etib, ',
                                                softWrap: true,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              Text(
                                                'Universal shartnoma ',
                                                softWrap: true,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.red),
                                              ),
                                              Text(
                                                'va',
                                                softWrap: true,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Maxfislik siyosati',
                                                softWrap: true,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.red),
                                                textAlign: TextAlign.start,
                                              ),
                                              Text(
                                                ' bilan tanishganimni ',
                                                softWrap: true,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                ),
                                                textAlign: TextAlign.start,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'tasdiqlayman',
                                            softWrap: true,
                                            overflow: TextOverflow.clip,
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                            textAlign: TextAlign.start,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (isChecked == true &&
                                        phoneController.text.length >= 9) {
                                      print("-----------------------");
                                      print("Bosildi Davom Etish");
                                      bloc.add(LoginUser(LoginRequest(
                                          "qwerty", "+998${phoneController.text}")));
                                      bloc.add(RegisterUser(RegisterRequest(
                                          "+998${phoneController.text}",
                                          passwordController.text,
                                          "firstName",
                                          "lastName",
                                          "969822000000",
                                          0)));
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 20,
                                        bottom: 20),
                                    child: Container(
                                      width: 359,
                                      height: 54,
                                      decoration: ShapeDecoration(
                                        color:passwordController.text.length >= 6 && phoneController.text.length == 9 &&
                                                isChecked
                                            ? Color(0xff912835)
                                            : Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        shadows: const [
                                          BoxShadow(
                                            color: Color(0x1E000000),
                                            blurRadius: 1,
                                            offset: Offset(0, 2),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          state.status == Status.LOADING
                                              ? const CupertinoActivityIndicator(
                                                  color: Colors.white,
                                                )
                                              : Text(
                                                  'Davom etish',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.manrope(
                                                    color:passwordController.text.length >= 6 && phoneController.text
                                                                    .length ==
                                                                9 &&
                                                            isChecked
                                                        ? Color(0xffffebf9)
                                                        : Color(0xff333031),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600,
                                                    height: 0,
                                                  ),
                                                ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
