import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditsPage extends StatefulWidget {
  const CreditsPage({super.key});

  @override
  State<CreditsPage> createState() => _CreditsPageState();
}

class _CreditsPageState extends State<CreditsPage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 18),
                InkWell(

                  onTap: (){
                    Navigator.pop(context);
                  },

                  child: Icon(
                    Icons.keyboard_arrow_left_outlined,
                    color: Color(0xff485564),
                    size: 28,
                  ),
                ),
                SizedBox(width: 18),
                Text(
                  "Kreditlar",
                  style: GoogleFonts.lato(
                      color: Color(0xff485564),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Spacer()
              ],
            ),


            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xFFFF0028),
                  gradient: LinearGradient(
                    colors: [Color(0xFF8A0037), Color(0xffFF002A)], // Ikkita rang
                    begin: Alignment.topLeft, // Boshlanish nuqtasi
                    end: Alignment.bottomRight, // Yakunlash nuqtasi
                  ),
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [



                    Container(
                      child: Image.asset("assets/images/anor.png",
                          height: 200, color: Color(0x8FFC0266),
                        fit: BoxFit.fitHeight,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text(

                                "Qulay mikroqarz",
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600
                                ),
                              ),


                              Text(

                                "Aksiya -10% chegirma 31-\nmartgacha!",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500
                                ),
                              ),

                              Row(

                                children: [],
                              ),
                            ],
                          ),

                          Spacer(),

                          Image.asset(
                              "assets/images/creadit_sale.png",
                            height: 100,
                            width: 100,
                          )


                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),

            SizedBox(
              height: 14,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color(0xFFFF0028),
                  gradient: LinearGradient(
                    colors: [Color(0xFF8A0037), Color(0xffFF002A)], // Ikkita rang
                    begin: Alignment.topLeft, // Boshlanish nuqtasi
                    end: Alignment.bottomRight, // Yakunlash nuqtasi
                  ),
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [



                    Container(
                      child: Image.asset("assets/images/anor.png",
                        height: 200, color: Color(0x8FFC0266),
                        fit: BoxFit.fitHeight,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text(

                                "Muddatli to'lov kartasi",
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600
                                ),
                              ),


                              Text(

                                "Xarid qilishdan bosh tortmang",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500
                                ),
                              ),

                              Row(

                                children: [],
                              ),
                            ],
                          ),

                          Spacer(),

                          Image.asset(
                            "assets/images/girl_2.png",
                            height: 120,
                            width: 100,
                            fit:BoxFit.fitHeight
                          )


                        ],
                      ),
                    )

                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
