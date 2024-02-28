import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/pin_code_screen_bloc.dart';

class PinCodeScreen extends StatefulWidget {
  const PinCodeScreen({super.key});

  @override
  State<PinCodeScreen> createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  final bloc = PinCodeScreenBloc();
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
        child: Text(
          number.toString(),
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        backgroundColor: Color(0xFFF5F7F6),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 56, right: 15),
              alignment: Alignment.topRight,
              child: const Text(
                "Pin kodni \nunutdingizmi?",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    child: Image.asset(
                      "assets/images/pin_image.png",
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const Text(
                    "PIN kodni kiriting",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Qolgan urinishlar soni: $attempts",
                    style:  const TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(4,
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
                              child: index < enteredPin.length ? Center(
                                child: Text(
                                  true ? "*" :  enteredPin[index].toString(),
                                  style: const TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              )
                                  : null
                          );
                        },
                      )),
                ],
              ),
            ),

            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 25),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))),
                child: Column(children: [
                  for (var i = 0; i < 3; i++)
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
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
                            onPressed: () {}, clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              "assets/images/fingerprint.png",
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                              color: Colors.grey,
                            ),),
                        numButton(0),
                        TextButton(
                          onPressed: () {
                            setState(
                                  () {
                                if (enteredPin.isNotEmpty) {
                                  enteredPin =
                                      enteredPin.substring(0, enteredPin.length - 1);
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
                ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
