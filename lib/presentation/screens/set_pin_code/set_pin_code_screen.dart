import 'package:anor_bank/presentation/main/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bloc/set_pin_code_screen_bloc.dart';

class SetPrinCodeScreen extends StatefulWidget {
  const SetPrinCodeScreen({super.key});

  @override
  State<SetPrinCodeScreen> createState() => _SetPrinCodeScreenState();
}

class _SetPrinCodeScreenState extends State<SetPrinCodeScreen> {
  final bloc = SetPinCodeScreenBloc();
  var attempts = 5;
  String enteredPin = '';
  bool isPinVisible = false;

  Widget numButton(int number) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: TextButton(
        onPressed: () {
          setState(() {
            if (enteredPin.length < 4) {
              enteredPin += number.toString();
            }

          });
        },
        child: Text(number.toString(),
            style: GoogleFonts.nunito(
              fontSize: 24,
              color: Colors.grey,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocBuilder<SetPinCodeScreenBloc, SetPinCodeScreenState>(
        builder: (context, state) {
          if (enteredPin.length >= 4) {
            bloc.add(AuthEvent());
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const MainScreen()));
          }
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Color(0xFFF5F7F6),
            body: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 45, left: 25),
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios_new)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 25),
                        child: Image.asset(
                          "assets/images/pin_image.png",
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text("Pin kodni yarating",
                          style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                  color: Colors.black, fontSize: 22))),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            4,
                            (index) {
                              return Container(
                                  margin: const EdgeInsets.all(6.0),
                                  width: 50,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black12),
                                    color: Colors.white,
                                  ),
                                  child: index < enteredPin.length
                                      ? Center(
                                          child: Text(
                                            true
                                                ? "*"
                                                : enteredPin[index].toString(),
                                            style: const TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        )
                                      : null);
                            },
                          )),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 25),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20))),
                    child: Column(
                      children: [
                        for (var i = 0; i < 3; i++)
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                3,
                                (index) => numButton(1 + 3 * i + index),
                              ).toList(),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                  "assets/images/fingerprint.png",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.contain,
                                  color: Colors.grey,
                                ),
                              ),
                              numButton(0),
                              TextButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      if (enteredPin.isNotEmpty) {
                                        enteredPin = enteredPin.substring(
                                            0, enteredPin.length - 1);
                                      }
                                    },
                                  );
                                },
                                child: const Icon(
                                  Icons.backspace,
                                  color: Colors.grey,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
