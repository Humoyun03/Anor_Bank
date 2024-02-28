import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/model/deposit_data.dart';


class DepositsPage extends StatefulWidget {
  const DepositsPage({super.key});

  @override
  State<DepositsPage> createState() => _DepositsPageState();
}

class _DepositsPageState extends State<DepositsPage> {



  List<DepositData> allList = [
    DepositData("deposit_image_25.png", "SHOSHILMASDAN", "Yuqori maqsadlar uchun yuqori stavkalar"),
    DepositData("deposit_images_24.png", "OMONAT 24%", "Qisqa vaqt ichida yuqori daromad"),
    DepositData("deposit_image_coal.png", "''PRIME'' VALYUTA OMNATI 7 %", "Yuksak yutuqlar omonati"),
    DepositData("deposit_images_coin.png", "GO VALYUTA OMONATI", "Belgilangan foiz stavkasi, istalgan vaqtda\nto'ldirib borish va yechish"),
    DepositData("deposit_images_baloon.png", "FLY VALYUTA OMONATI", "Belgilangan foiz stavkasi"),
    DepositData("deposit_images_safe.png", "SMART 3.0", "Qulay foiz stavkalari, moslashuvchan\nshartlar va 100% xavfsizlik kafolati"),
  ];


  List<DepositData> listSumma = [
    DepositData("deposit_image_25.png", "SHOSHILMASDAN", "Yuqori maqsadlar uchun yuqori stavkalar"),
    DepositData("deposit_images_24.png", "OMONAT 24%", "Qisqa vaqt ichida yuqori daromad"),
    DepositData("deposit_images_safe.png", "SMART 3.0", "Qulay foiz stavkalari, moslashuvchan\nshartlar va 100% xavfsizlik kafolati"),

  ];


  List<DepositData> listValyuta = [
    DepositData("deposit_image_coal.png", "PRIME VALYUTA OMNATI 7 %", "Yuksak yutuqlar omonati"),

    DepositData("deposit_images_coin.png", "GO VALYUTA OMONATI", "Belgilangan foiz stavkasi, istalgan vaqtda\nto'ldirib borish va yechish"),

    DepositData("deposit_images_baloon.png", "FLY VALYUTA OMONATI", "Belgilangan foiz stavkasi"),
  ];






  // Worker List
  var workerList = [];







  bool isSelect1 = true;
  bool isSelect2 = false;
  bool isSelect3 = false;

  @override
  void initState() {
    workerList = allList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(height:70,),

          Row(
            children: [
              SizedBox(width: 18),
              InkWell(

                onTap: (){
                  Navigator.pop(context);
                },

                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Color(0xff0d0f10),
                  size: 24,

                ),
              ),
              SizedBox(width: 18),
              Text(
                "Omonatlar",
                style: GoogleFonts.lato(
                    color: Color(0xff485564),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Spacer()
            ],
          ),


          SizedBox(height: 70,),

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Omonat turini tanlang",
              style: GoogleFonts.lato(
                  color: Color(0xFF7A0412),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),



          Padding(
            padding: const EdgeInsets.only(top: 20,left: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                InkWell(

                  onTap: () {
                    setState(() {

                      print("--------------------------------");
                      print("Bosildi");

                      isSelect1 = true;
                      isSelect2 = false;
                      isSelect3 = false;

                      workerList = allList;

                      print("-----------------------------");
                      print(workerList.length);

                    });
                    setState(() {

                    });
                  },

                  child: FittedBox(
                    child: Container(
                      height: 30,
                      decoration: ShapeDecoration(
                        color: isSelect1?Color(0xff202F3F):Color(0xffF5F5F4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 20,),
                          Text(
                            "Hammasi",
                            style: TextStyle(
                              color: isSelect1?Color(0xffdde3e5):Color(0xff626973),
                            ),
                          ),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
                  ),
                ),


                SizedBox(width: 10,),

                InkWell(

                  onTap: () {
                    setState(() {
                      isSelect1 = false;
                      isSelect2 = true;
                      isSelect3 = false;

                      workerList = listSumma;

                      print("-----------------------------");
                      print(workerList.length);

                    });

                    setState(() {

                    });
                  },

                  child: FittedBox(
                    child: Container(
                      height: 30,
                      decoration: ShapeDecoration(
                        color: isSelect2?Color(0xff202F3F):Color(0xffF5F5F4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 20,),
                          Text(
                            "So'm",
                            style: TextStyle(
                              color: isSelect2?Color(0xffdde3e5):Color(0xff626973),
                            ),
                          ),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
                  ),
                ),


                SizedBox(width: 10,),


                InkWell(

                  onTap: () {
                    setState(() {
                      isSelect1 = false;
                      isSelect2 = false;
                      isSelect3 = true;

                      workerList = listValyuta;

                      print("-----------------------------");
                      print(workerList.length);

                    });

                    setState(() {

                    });
                  },

                  child: FittedBox(
                    child: Container(
                      height: 30,
                      decoration: ShapeDecoration(
                        color: isSelect3?Color(0xff202F3F):Color(0xffF5F5F4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 20,),
                          Text(
                            "Valyuta",
                            style: TextStyle(
                              color: isSelect3?Color(0xffdde3e5):Color(0xff626973),
                            ),
                          ),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
                  ),
                ),

              ],

            ),
          ),



          SizedBox(height: 20,),



          Flexible(
            flex: 1,
            child: Container(
              width: double.infinity,
              child: Builder(
                  builder: (BuildContext context){
                  return ListView.builder(

                      itemCount:workerList.length,itemBuilder: (context,index){


                    return Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20,bottom: 8),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xffF5F5F4),

                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [



                            Padding(
                              padding: const EdgeInsets.only(right: 10,top: 14),
                              child: Container(
                                child: Image.asset("assets/images/anor.png",
                                  height: 80, color: Color(0xFFE1E2E1),
                                  fit: BoxFit.fitHeight,
                                ),
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

                                        workerList[index].titel,
                                        style: GoogleFonts.lato(
                                            color: Color(0xff686C7D),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w800
                                        ),
                                      ),


                                      SizedBox(height: 10,),

                                      Text(

                                        workerList[index].Descraption,
                                        style: GoogleFonts.montserrat(
                                            color: Color(0xff94979E),
                                            fontSize: 10,
                                          fontWeight: FontWeight.w500

                                        ),
                                      ),

                                      Row(

                                        children: [],
                                      ),
                                    ],
                                  ),

                                  Spacer(),

                                  Padding(
                                    padding: const EdgeInsets.only(right: 10,top: 10),
                                    child: Image.asset(
                                      "assets/images/${workerList[index].image}",
                                      height: 70,
                                      width: 70,
                                      fit:BoxFit.fill
                                    ),

                                  )


                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );



                  });
                }
              ),
            ),
          )


        ],

      ),

    );

  }
}
