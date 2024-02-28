


import 'package:flutter/material.dart';

Widget cashback(context){
  return SafeArea(
    child: Container(
    decoration: BoxDecoration(
        color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey, width: 0.5)
    ),
      child: Card(
        color: Color(0xFFFFFFFF),
        child: Theme(
          data: ThemeData().copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(

            title: Container(
              height: 41,
              child:  const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                              "Keshbek" ,
                              style: TextStyle(
                                  color: Color(0xFF343333),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),

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
                      height: 100,
                      width: double.maxFinite,
                      decoration:
                      BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey, width: 1.5)),
                      child:  Row(
                        children: [
                          SizedBox(width: 5,),
                          const Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 100,),
                              SizedBox(height: 10,),
                              Text("Keshbek", style: TextStyle(color: Color(0xFF343333), fontSize: 16, fontWeight: FontWeight.bold),),
                              Text("To`plangan", style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),),
                              Text("0 UZS", style: TextStyle(
                                  color: Color(0xFF03943C),

                                  fontSize: 18, fontWeight: FontWeight.w800),),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom:18.0),
                            child: Container(
                              width: 100,
                              height: 28,
                              decoration: BoxDecoration(
                                  color: Color(0xFF86EFAD),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: const Center(
                                child: Text("25,0% gacha", style: TextStyle(color: Color(
                                    0xFF028334), fontWeight: FontWeight.bold, fontSize: 13),),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,)
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