import 'package:anor_bank/presentation/add_card/add_card_screen.dart';
import 'package:anor_bank/presentation/screens/cards_screen/bloc/card_bloc.dart';
import 'package:anor_bank/presentation/transaction_screen/transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/model/enum/Status.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  int? _value = 0;
  int selected = 0;

  final bloc = CardBloc();

  @override
  void initState() {
    bloc.add(CardInitEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<CardBloc, CardInitial>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.status == Status.LOADING) {}

          return Scaffold(
            backgroundColor: const Color(0xFF8A0037),
            body: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "Kartalarim",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Wrap(
                                spacing: 8.0,
                                children: List<Widget>.generate(
                                  3,
                                  (int index) {
                                    var list = [
                                      "Hammasi",
                                      "Debit",
                                      "Muddatli to'lov"
                                    ];
                                    return ChoiceChip(
                                      showCheckmark: false,
                                      label: Text(
                                        list[index],
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: _value == index
                                                ? Colors.white
                                                : Colors.grey.shade700),
                                      ),
                                      selected: _value == index,
                                      onSelected: (bool selected) {
                                        setState(() {
                                          _value = selected ? index : null;
                                        });
                                      },
                                      selectedColor: const Color(0xFF671636),
                                      disabledColor: Colors.grey.shade400,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                    );
                                  },
                                ).toList(),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AddCardScreen()));
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF671636),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: const Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Text(
                                "Kartalar",
                                style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.refresh),
                                    color: Color(0xFF671636),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        selected = 0;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.sort,
                                      color: selected == 0
                                          ? Color(0xFF671636)
                                          : Colors.grey,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        selected = 1;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.apps_sharp,
                                      color: selected == 1
                                          ? Color(0xFF671636)
                                          : Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Flexible(
                            flex: 1,
                            child: ListView.builder(
                                itemCount: state.allCardsList?.length,
                                itemBuilder: (context, index) {
                                  return selected == 0
                                      ? InkWell(
                                    onTap: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) =>  TransactionScreen(type: "third-card", senderId: state.allCardsList?[index]?.id.toString() ?? "")));
                                    },
                                        child: buildCardThinItem(
                                            state.allCardsList?[index]
                                                    ?.name ??
                                                "User",
                                            state.allCardsList?[index]
                                                    ?.pan ??
                                                "9860123456789"),
                                      )
                                      : InkWell(
                                    onTap: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) =>  TransactionScreen(type: "third-card", senderId: state.allCardsList?[index]?.id.toString() ?? "")));
                                    },
                                        child: buildCardExpandable(
                                            context,
                                            state.allCardsList?[index]
                                                    ?.name ??
                                                "User",
                                            state.allCardsList?[index]
                                                    ?.pan ??
                                                "9860123456789"),
                                      );
                                }))
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

  Container buildCardExpandable(BuildContext context, String name, String pan) {
    return Container(
      margin: EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width / 2,
      height: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/humo.png",
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                  Text(
                    "*******${pan}",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildCardThinItem(String name, String pan) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      height: 78,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              "assets/images/humo.png",
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                  Text(
                    "*******${pan}",
                    style: GoogleFonts.montserrat(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
