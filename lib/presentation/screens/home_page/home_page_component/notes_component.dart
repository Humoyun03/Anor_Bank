import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    bottom: Radius.circular(20), // Radiusni o'zgartiring
                  ),
                ),
                trailing: const SizedBox(),
                expandedAlignment: Alignment.topLeft,
                onExpansionChanged: (boolean) {
                  // isCheck = !boolean;
                  setState(() {
                    isCheck = !boolean;
                  });
                },
                title: Row(
                  children: [
                    Text(
                      "Eslatma",
                      style: GoogleFonts.lato(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Icon(isCheck
                        ? Icons.keyboard_arrow_right
                        : Icons.keyboard_arrow_down),
                  ],
                ),
                children: [
                  SizedBox(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, right: 0, top: 4, bottom: 20),
                              child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        "assets/images/eslatmalar_bg.png",
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 26, left: 4, right: 4),
                                            child: Center(
                                              child: Text(
                                                  "PRIME omonatli yillik 7%",
                                                  style: GoogleFonts.nunitoSans(
                                                    color: Color(0xfffbd7d7),
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  maxLines: 2,
                                                  textAlign: TextAlign.center),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Image.asset(
                                              "assets/images/car.png",
                                              height: 50,
                                              width: 60,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 12, left: 18, right: 18),
                                            child: Center(
                                              child: Text("Batafsil",
                                                  style: GoogleFonts.roboto(
                                                    color: Color(0xffac9aa1),
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12,
                                                  ),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  maxLines: 2,
                                                  textAlign: TextAlign.center),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                            );
                          })),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* ExpansionTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20), // Radiusni o'zgartiring
                    ),
                  ),
                  title: Text(
                    "Eslatma",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                    ),
                  ),
                  children: [
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 4, right: 4, top: 4, bottom: 20),
                              child: Container(
                                  width: 130,
                                  height: 130,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Stack(
                                    children: [
                                      Image.asset(
                                        "assets/images/eslatmalar_bg.png",
                                      ),
                                      Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 26, left: 4, right: 4),
                                              child: Center(
                                                child: Text(
                                                    "PRIME omonatli yillik 7%",
                                                    style: GoogleFonts.nunitoSans(
                                                      color: Color(0xfffbd7d7),
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 12,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textDirection:
                                                        TextDirection.ltr,
                                                    maxLines: 2,
                                                    textAlign: TextAlign.center),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 10),
                                              child: Image.asset(
                                                "assets/images/car.png",
                                                height: 60,
                                                width: 60,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12, left: 18, right: 18),
                                              child: Center(
                                                child: Text("Batafsil",
                                                    style: GoogleFonts.roboto(
                                                      color: Color(0xffac9aa1),
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 12,
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textDirection:
                                                        TextDirection.ltr,
                                                    maxLines: 2,
                                                    textAlign: TextAlign.center),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            );
                          }),
                    ),
                  ],
                ),*/
