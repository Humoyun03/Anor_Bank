import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardOrder extends StatefulWidget {
  const CardOrder({super.key});

  @override
  State<CardOrder> createState() => _Card_OrderState();
}

class _Card_OrderState extends State<CardOrder> {



  final listImage = ["anor_kart.png","anor_kart.png","girl_images.png","anor_bank_kart_images.png","anor_kart_red.png","kashaloc.png","black_cart.png"];
  final listTitel = ["ANOR BLACK","ANOR BLACK VIRTUAL","HUMO TRIA -3 TASI DA TO'LOV\n KARTASI","VIRTUAL HUMO TRIA","MUDDATLI TO'LOV KARTASI","ELEKTRON HAMYON","ANOR UZCARD DUO"];
  final listDescraption = ["O'zbekistonda kartalarning mutlaq\nyangi turi","Xalqaro xariqlar uchun karta","Debet kartaning yangi\nimkoniyatlari","Bir zumda chiqarish va to'lovlar\nuchun kartani ishlatish","Tovarlarni foizsiz xarid qiling","O'zingizning elektron\nhamyoningiz","Onlayn kartaga buyurtma bering\nva\nyangi imkoniyatlarga ega bo'ling"];

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
                    Icons.keyboard_arrow_left,
                    color: Color(0xff485564),
                    size: 30,
                  ),
                ),
                Spacer(),
                Text(
                  "Kartaga buyurtma",
                  style: GoogleFonts.lato(
                    color: Color(0xff485564),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
              ],
            ),

            SizedBox(height: 10,),

            Flexible(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: listImage.length,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 8),
                                child: Text(
                                  "Karta turini tanlang",
                                  style: GoogleFonts.lato(
                                      color: Color(0xff485564),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xffF5F5F4),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFFFAF3F4),
                                      // Set the shadow color
                                      blurRadius: 8.0,
                                      // Set the blur radius of the shadow
                                      spreadRadius: .0,
                                      // Set the spread radius of the shadow
                                      offset: Offset(
                                          0, 4), // Set the offset of the shadow
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                listTitel[index],
                                                style: GoogleFonts.lato(
                                                    color: Color(0xff485564),
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w700),
                                              ),


                                              SizedBox(height: 10,),


                                              Text(
                                                listDescraption[index],
                                                style: GoogleFonts.manrope(
                                                    color: Color(0xff485564),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ],
                                          ),

                                          Spacer(),

                                          Image.asset(
                                            "assets/images/${listImage[index]}",
                                            height: 80,
                                            width: 80,
                                          ),

                                          SizedBox(width: 12,)

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(height: 10,)
                            ],
                          ),
                        );
                      } else {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xffF5F5F4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFFAF3F4),

                                ),
                              ],
                            ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              listTitel[index],
                                              style: GoogleFonts.lato(
                                                  color: Color(0xff485564),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700),
                                            ),


                                            SizedBox(height: 10,),


                                            Text(
                                              listDescraption[index],
                                              style: GoogleFonts.manrope(
                                                  color: Color(0xff485564),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),

                                        Spacer(),

                                        Image.asset(
                                          "assets/images/${listImage[index]}",
                                          height: 80,
                                          width: 80,
                                        ),

                                        SizedBox(width: 12,)

                                      ],
                                    ),
                                  ],
                                ),
                              )
                          ),
                        );
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
