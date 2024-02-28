import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

        backgroundColor: Color(0xff6e1423),
        appBar: AppBar(
          toolbarHeight: 80,


          title: Text(
              "Xizmatlar",
              style: GoogleFonts.roboto(fontSize: 20, color: Colors.white),
            ),

          centerTitle: true,
          backgroundColor: Color(0xff6e1423),
        ),
        body: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30) ,
            topRight: Radius.circular(30)
          ),
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white ,
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: Color(0xffdddfdc), width: 1
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                  child: Image.asset(
                                "assets/images/servise_chek.png",
                                height: 80,
                                width: 80,
                              )),
                            ),
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 12),
                                  child: Text(
                                    "Onlayn davlat xizmatlari",
                                    style: GoogleFonts.lato(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2),
                                  child: Text(
                                    "Bu yerda davlat xizmatlari",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2),
                                  child: Text(
                                    "portlaridan foydalanishningiz va",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 2, bottom: 10),
                                  child: Text(
                                    "ma'lumotnomalarni olishingiz mumkin",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17,left: 15,right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                            color: Color(0xffdddfdc), width: 1
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, bottom: 10),
                                  child: Text(
                                    "Sug'urta kompaniyalari",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 13,
                                        fontWeight:
                                            FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 2,
                                  ),
                                  child: Text(
                                    "OSAGO sug'urta polisiga buyurtma ",
                                    style: GoogleFonts.montserrat(

                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10),
                                  child: Text(
                                    "berish va to'lash",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 11,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/images/servise_succses.png",
                              height: 100,
                              width: 80,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


                  item_servise("servise_convertation","Kross konvertatsiya"),
                  item_servise("servise_kart","Kartaga buyurtma berish"),
                  item_servise("omonat_servise","Kross Omonatlar"),
                  item_servise("servise_kredit","Kreditlar"),
                  item_servise("servise_mening_uyim","Mening uyim"),
                  item_servise("servise_valyuta","Valyuta ayriboshlash"),
                  item_servise("servise_internationat","Xalqaro pul o'tkazmalari"),
                  item_servise("servise_sugurta","Sug'urta"),
                  item_servise("servise_hisob_raqam","Hisobraqam"),
                  SizedBox(height: 30,)
                ],
              ),
            ),
          ),
        ),
      );
  }

  Padding item_servise(String image_path,String text) {

    return Padding(
                              padding: const EdgeInsets.only(top: 24,left: 15,right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Row(
                                    children: [

                                      Container(

                                        width: 58,
                                        height:58,

                                        decoration: BoxDecoration(
                                          color: Color(0xfff5f4f4),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)
                                          ),

                                          border: Border.all(
                                              color: Color(0xffdddfdc), width: 0.5),



                                        ),
                                        child: Image.asset("assets/images/${image_path}.png"),
                                      ),


                                      Padding(
                                        padding: const EdgeInsets.only(left: 18),
                                        child: Center(
                                          child: Text(
                                            text,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 16,
                                              fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ),
                                      )



                                    ],
                                  )


                                ],
                              ),
                            );
  }
}
