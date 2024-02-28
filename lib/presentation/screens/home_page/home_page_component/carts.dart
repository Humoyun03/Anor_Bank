import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Carts extends StatefulWidget {
  const Carts({super.key});

  @override
  State<Carts> createState() => _CartsState();
}

class _CartsState extends State<Carts> {
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                child: ExpansionTile(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10), // Radiusni o'zgartiring
                    ),
                  ),
                  trailing: isCheck == false
                      ? Text(
                          "Hammasi",
                          style: GoogleFonts.lato(
                              fontSize: 14, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.start,
                        )
                      : Text(
                          "",
                          style: GoogleFonts.lato(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          textAlign: TextAlign.start,
                        ),
                  expandedAlignment: Alignment.topRight,
                  onExpansionChanged: (boolean) {
                    // isCheck = !boolean;
                    setState(() {
                      isCheck = !boolean;
                    });
                  },
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Kartalarim",
                        style: GoogleFonts.lato(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Icon(isCheck
                          ? Icons.keyboard_arrow_right
                          : Icons.keyboard_arrow_down),
                      Spacer(),
                    ],
                  ),
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0xffF7F6EF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                              border: Border.all(
                                  color: Color(0xffdddfdc), width: 1),
                            ),
                            child: Row(
                              children: [
                                Image.asset("assets/images/uz_cart.png"),
                                SizedBox(
                                  width: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Agro",
                                          style: GoogleFonts.lato(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800),
                                          textAlign: TextAlign.start,
                                        ),
                                        Text(
                                          "**** 5655",
                                          style: GoogleFonts.lato(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w800,
                                              color: Color(0xffC6D7D6)),
                                          textAlign: TextAlign.start,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Stack(children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        "assets/images/anor_immage.png"),
                                  ),
                                  Center(
                                    child: Row(
                                      children: [
                                        Text(
                                          "3 805 ",
                                          style: GoogleFonts.lato(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w800,
                                              color: Color(0xff46565F)),
                                          textAlign: TextAlign.start,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          child: Text(
                                            ".15 uzs",
                                            style: GoogleFonts.lato(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Color(0xff9F9598)),
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ])
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
