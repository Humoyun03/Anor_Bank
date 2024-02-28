import 'package:anor_bank/data/model/enum/Status.dart';
import 'package:anor_bank/presentation/main/MainScreen.dart';
import 'package:anor_bank/presentation/screens/sms_verification_screen/bloc/sms_verification_screen_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SMSniTasdiqlash extends StatefulWidget {
  const SMSniTasdiqlash({super.key});

  @override
  State<SMSniTasdiqlash> createState() => _SMSniTasdiqlashState();
}

class _SMSniTasdiqlashState extends State<SMSniTasdiqlash> {
  final controler = TextEditingController();
  final bloc = SmsVerificationScreenBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child:
          BlocConsumer<SmsVerificationScreenBloc, SmsVerificationScreenState>(
        listener: (context, state) {
          if (state.status == Status.SUCCESS) {
            Navigator.pushNamed(context, "main");


            // Navigator.pushNamed(context, 'main');

          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 34, top: 50),
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset('assets/images/sms_tasdiqlash.png',
                          height: 150, width: 150, fit: BoxFit.fill),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'SMS tasdiqlash',
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(fontSize: 22),
                            color: Color(0xff505d6c),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Center(
                        child: Text(
                          'Telefon raqamingizni tasdiqlash uchun SMS kodini kiriting',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(fontSize: 15),
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
                                        height: 54,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Color(
                                              0xfff3f6f5), // Container rangi
                                        ),
                                        child: Stack(
                                          children: [
                                            Center(
                                              child: TextField(
                                                controller: controler,
                                                textAlign: TextAlign.center,
                                                cursorOpacityAnimates: true,
                                                onChanged: (str) {
                                                  if (str.length > 6) {
                                                    controler.text =
                                                        str.substring(0, 6);
                                                  }
                                                  if (str.length == 6 ||
                                                      str.length == 5) {
                                                    setState(() {});
                                                  }
                                                },
                                                decoration: InputDecoration(
                                                  hintText:
                                                      "SMS kodni kiriting",
                                                  hintStyle: GoogleFonts.karla(
                                                      fontSize: 20,
                                                      color: Colors.black12),
                                                  border: InputBorder.none,
                                                ),
                                                keyboardType:
                                                    TextInputType.number,
                                              ),
                                            )
                                          ],
                                        )),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (controler.text.length == 6) {
                                      bloc.add(VerifyUser(controler.text));
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20,
                                        right: 20,
                                        top: 12,
                                        bottom: 20),
                                    child: Container(
                                      width: 359,
                                      height: 54,
                                      decoration: ShapeDecoration(
                                        color: controler.text.length == 6
                                            ? Color(0xffbd2426)
                                            : Color(0xfff3f6f5),
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
                                                    color:
                                                        controler.text.length ==
                                                                6
                                                            ? Color(0xffe3dede)
                                                            : Color(0xff363a39),
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
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 60),
                      child: Text(
                        'Kod 57 sekund ichida keladi',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff788284)),
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
