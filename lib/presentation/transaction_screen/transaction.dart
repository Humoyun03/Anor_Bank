import 'package:anor_bank/data/request/transfer_fee_request/fee_request.dart';
import 'package:anor_bank/presentation/screens/transaction_verify/transaction_verify.dart';
import 'package:anor_bank/presentation/transaction_screen/bloc/transaction_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/model/enum/Status.dart';

class TransactionScreen extends StatefulWidget {
  String type;
  String senderId;

  TransactionScreen({required this.type, required this.senderId, super.key});

  @override
  State<TransactionScreen> createState() =>
      _TransactionScreenState(this.type, this.senderId);
}

class _TransactionScreenState extends State<TransactionScreen> {
  String type;
  String senderId;

  _TransactionScreenState(this.type, this.senderId);

  final bloc = TransactionBloc();
  final succuss = false;

  final cardNumberController = TextEditingController();
  final sumController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<TransactionBloc, TransactionState>(
        listener: (context, state) {
          if (state.status == Status.SUCCESS) {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => TransactionVerify()
                )
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              const SizedBox(
                                height: 80,
                              ),
                              const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Color(0xFF545254),
                                size: 20,
                                weight: 5,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Kartaga o`tkazmalar",
                                style: GoogleFonts.kanit(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF545251)),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:18.0, left: 18, right: 18, bottom: 4),
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(splashColor: Colors.red),
                              child: TextField(
                                enableSuggestions: false,
                                autocorrect: false,

                                controller: cardNumberController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.document_scanner_rounded,
                                    color: Colors.grey,
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFEEECEC),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  labelText: "Karta raqami",
                                  labelStyle:
                                      TextStyle(color: Color(0xFF9A9797)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFD0CECE)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                ),
                              ),
                            ),
                          ),

                           Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              state.holder ?? ""
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                              left: 18.0,
                              right: 18,
                            ),
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(splashColor: Colors.red),
                              child: TextField(
                                enableSuggestions: false,
                                autocorrect: false,
                                controller: sumController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.monetization_on_outlined,
                                    color: Colors.grey,
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFEEECEC),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 0),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  labelText: "Mablag`ni kiriting",
                                  labelStyle:
                                      TextStyle(color: Color(0xFF9A9797)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFDED9D9)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          catalogItem("Mening kartalarim orasida",
                              Icons.credit_card, () {}),
                          const SizedBox(
                            height: 10,
                          ),
                          catalogItem("Saqlanganlar", Icons.star_border, () {}),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(splashColor: Colors.red),
                              child: const TextField(
                                enableSuggestions: false,
                                autocorrect: false,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.search_rounded,
                                    color: Colors.grey,
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFFFFFFF),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  labelText: "Qidiruv ma`lumotlarini kiriting",
                                  labelStyle:
                                      TextStyle(color: Color(0xFF9A9797)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFD0CECE)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, top: 4, right: 16),
                            child: InkWell(
                              onTap: () {
                                bloc.add(TransactionEventInitial(
                                    "third-card",
                                    senderId,
                                    cardNumberController.text,
                                    int.parse(sumController.text)
                                ));


                                bloc.add(TransferButtonClick(FeeRequest(senderId,  cardNumberController.text,int.parse(sumController.text))));

                              },
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border:
                                        Border.all(color: Color(0xFFD5D2D2)),
                                    color: Color(0xFF8A0037)),
                                child: Center(
                                  child: state.status == Status.LOADING
                                      ? const CupertinoActivityIndicator(
                                          color: Colors.white,
                                        )
                                      : Text(
                                        "Davom etish",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20),
                                        ),
                                ),
                              ),
                            ),
                          )
                        ],
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

Widget catalogItem(String name, IconData icon, void Function() onClick) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, top: 4, right: 16),
    child: InkWell(
      onTap: onClick,
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xFFD5D2D2)),
            color: Color(0xFFEFEFEF)),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
                width: 40,
                height: 60,
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      icon,
                      size: 30,
                      color: Color(0xFF8D8D8D),
                    ))),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Text(name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color(0xFF494949))),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 18,
                )),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    ),
  );
}
