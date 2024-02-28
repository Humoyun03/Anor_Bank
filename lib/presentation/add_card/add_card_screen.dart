import 'package:anor_bank/data/model/enum/Status.dart';
import 'package:anor_bank/data/request/add_card_request/add_card_request.dart';
import 'package:anor_bank/presentation/add_card/bloc/add_card_screen_bloc.dart';
import 'package:anor_bank/presentation/add_card/widget/buildTextField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/formatters/credit_card_expiration_input_formatter.dart';
import 'package:flutter_multi_formatter/formatters/credit_card_number_input_formatter.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {




  bool switchValue = false;
  final bloc = AddCardScreenBloc();


  final cardNumberController = TextEditingController();
  final expiredDateController = TextEditingController();
  final cardNameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<AddCardScreenBloc, AddCardScreenState>(
        listener: (context, state) {
          if (state.status == Status.SUCCESS) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: CupertinoColors.systemGroupedBackground,
            body: Stack(
              children: [
                Positioned(
                  top: 45,
                  left: 0,
                  right: 0,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.back,
                            color: Colors.black,
                          )),
                      const SizedBox(
                        width: 45,
                      ),
                      const Text(
                        "Karta qo'shish",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
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
                            child: Column(
                              children: [
                                buildTextField(
                                    cardNumberController,
                                    "Karta raqamini kiriting:",
                                    true,
                                    TextInputType.number, [
                                  CreditCardNumberInputFormatter(
                                      useSeparators: true)
                                ]),
                                const SizedBox(
                                  height: 20,
                                ),
                                buildTextField(
                                    expiredDateController,
                                    "Amal qilish muddati",
                                    false,
                                    TextInputType.number,
                                    [CreditCardExpirationDateFormatter()]),
                                const SizedBox(
                                  height: 20,
                                ),
                                buildTextField(
                                    cardNameController,
                                    "Karta nomi:",
                                    false,
                                    TextInputType.text, []),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "ANORBANK ish haqi kartasi",
                                      style: GoogleFonts.karla(
                                          fontSize: 17, color: Colors.black),
                                    ),
                                    CupertinoSwitch(
                                        activeColor: const Color(0xffeca5a6),
                                        thumbColor: const Color(0xffbd2426),
                                        trackColor: Colors.black12,
                                        value: switchValue,
                                        onChanged: (value) {
                                          setState(() {
                                            switchValue = !switchValue;
                                          });
                                        })
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    bloc.add(AddingCard( AddCardRequest(
                                        cardNumberController.text,
                                        expiredDateController.text.substring(0,2),
                                        expiredDateController.text.substring(3,5),
                                        cardNameController.text
                                    )));
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
                                        color: cardNumberController
                                                    .text.isNotEmpty &&
                                                expiredDateController
                                                    .text.isNotEmpty &&
                                                cardNameController
                                                    .text.isNotEmpty
                                            ? const Color(0xffbd2426)
                                            : CupertinoColors
                                                .systemGroupedBackground,
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
                                              ? CupertinoActivityIndicator(
                                                  color: Colors.red,
                                                )
                                              : Text(
                                                  'Davom etish',
                                                  textAlign: TextAlign.center,
                                                  style: GoogleFonts.manrope(
                                                    color: Color(0xff363a39),
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
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
