import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AsosiyOynaniOzgartirish extends StatefulWidget {
  const AsosiyOynaniOzgartirish({super.key});

  @override
  State<AsosiyOynaniOzgartirish> createState() =>
      _AsosiyOynaniOzgartirishState();
}

class _AsosiyOynaniOzgartirishState extends State<AsosiyOynaniOzgartirish> {
  final list = [
    "Mening uyim",
    "Eslatma",
    "Kartalarim",
    "Saqlangan to'lovlar",
    "Omonatlar",
    "Valyutalar kursi",
    "Kreditlar",
    "Keshbek"
  ];

  final listFaolEmas = [];

  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      if (oldIndex < newIndex) {
        newIndex -= 1;
      }

      final String tile = list.removeAt(oldIndex);
      list.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    int countTop = 8 ;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    size: 28,
                  ),
                  Spacer(),
                  Text(
                    "VIDJETLAR",
                    style: GoogleFonts.montserrat(
                      color: Color(0xff4A5661),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  "Faol",
                  style: GoogleFonts.montserrat(
                    color: Color(0xffC92D40),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: list.length + 4,
            child: ReorderableListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: list.length,
              itemBuilder: (context, index) {
                final tile = list[index];
                return Padding(
                  key: ValueKey(tile),
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/more_vertical.png",
                          height: 36,
                          width: 36,
                          color: Color(0xffDFDFDD),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          tile,
                          style: GoogleFonts.montserrat(
                            color: Color(0xff606674),
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                        Spacer(),
                        InkWell(


                          onTap: () {
                            if(list.length!=1) {
                              setState(() {
                                listFaolEmas.add(list[index]);
                                list.removeAt(index);
                              });
                            }
                          },
                          child: Image.asset(
                            "assets/images/vidjet_minus.png",
                            height: 46,
                            width: 46,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              onReorder: (oldIndex, newIndex) {
                setState(() {
                  if (newIndex > oldIndex) {
                    newIndex -= 1;
                  }
                  final tile = list.removeAt(oldIndex);
                  list.insert(newIndex, tile);
                });
              },
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Faol emas",
                  style: GoogleFonts.montserrat(
                    color: Color(0xffC92D40),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                )),
          ),
          Flexible(
              flex: listFaolEmas.length + 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: ListView.builder(
                    itemCount: listFaolEmas.length,
                    itemBuilder: (contex, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/more_vertical.png",
                                height: 36,
                                width: 36,
                                color: Color(0xffDFDFDD),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                listFaolEmas[index],
                                style: GoogleFonts.montserrat(
                                  color: Color(0xff606674),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                              Spacer(),
                              InkWell(

                                onTap: (){

                                  setState(() {
                                    list.add(listFaolEmas[index]);
                                    listFaolEmas.removeAt(index);
                                  });
                                },

                                child: Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: Image.asset(
                                    "assets/images/vidjet_pluse.png",
                                    height: 46,
                                    width: 46,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ))
        ],
      ),
    );
  }
}
