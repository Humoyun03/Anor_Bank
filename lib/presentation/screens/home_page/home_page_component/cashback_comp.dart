import 'package:flutter/material.dart';
Widget cashback(context){
  return Card(
    color: Color(0xFFFFF7F9),
    child: Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Container(
          height: 65,
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
                              color: Colors.grey,
                              fontSize: 25,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 5,),

                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
        children: [
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration:
                  BoxDecoration(color: Color(0xFF683396), borderRadius: BorderRadius.circular(10)),
                  child: Center(child:
                  Text("LocaleKeys.calc.tr()", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),),
                ),
              ),
            ),
          ),
          SizedBox(height: 5,),
        ],
      ),
    ),
  );
}