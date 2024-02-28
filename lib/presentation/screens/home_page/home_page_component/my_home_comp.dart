


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget myHomeComponent(context){
  return SafeArea(
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(10)
    ),
      child: Card(
        color: Color(0xFFFFFFFF),
        child: Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: true,
            title: Container(
              height: 41,
              child:   Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                              "Mening uyim" ,
                              style:GoogleFonts.lato(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            children: [
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10,top:2),
                child: Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: 250,
                      width: double.maxFinite,
                      decoration:
                      BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(10)),
                      child:  Column(
                        children: [
                          Image.asset("assets/images/myhome.png", height: 100,),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,top:20,bottom: 20),
                            child: Container(
                              width: 359,
                              height: 54,
                              decoration: ShapeDecoration(
                                color: const Color(0xffd4001c),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x1E000000),
                                    blurRadius: 1,
                                    offset: Offset(0, 2),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Text(
                                    'Yangi uy qo`shish',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.manrope(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight:FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    ),
  );
}