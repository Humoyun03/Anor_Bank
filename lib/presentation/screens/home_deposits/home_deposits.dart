import 'package:flutter/material.dart';

class HomeDeposits extends StatelessWidget {
  const HomeDeposits({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: ListView(
            children: [
              homeDeposit(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget homeDeposit(context) {
  return Card(
    color: const Color(0xFFFFF7F9),
    child: Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Container(
          height: 40,
          child: const Text(
            "Omonatlar",
            style: TextStyle(
                color: Color(0xFF454548),
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
        ),
        children: [
          const SizedBox(height: 5,),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFF683396),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "LocaleKeys.calc.tr()",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFF683396),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "LocaleKeys.calc.tr()",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5,),
        ],
      ),
    ),
  );
}