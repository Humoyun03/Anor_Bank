import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@override
Widget InputSearch(BuildContext context, TextEditingController controller) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
    ),
    child: Row(
      children: [

        Expanded(
          child: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'To`lov',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
          ),
        ),
        const Spacer(),
        const Icon(Icons.search_rounded, color: Colors.grey,size: 28,),
      ],
    ),
  );
}

Widget categoryItem2(String name, String image) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, top: 4),
    child: Column(
      children: [
        Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x34000000),
                  offset: Offset(
                    0.5,
                    0.5,
                  ),
                  blurRadius: 0.1,
                  spreadRadius: 0.3,
                ), //BoxShadow
                BoxShadow(
                  color: Color(0x34000000),
                  offset: const Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  image,
                  width:40 ,
                  height:40 ,
                  fit: BoxFit.cover,
                  color: Color(0xFF3A3939),
                ))),
        Container(
          width: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12
                )),
          ),
        )
      ],
    ),
  );
}


Widget categoryItem(String name, String image, LinearGradient gradient) {
  return Padding(
    padding: const EdgeInsets.only(left: 7, top: 7, right: 7, bottom: 7),
    child: Container(
      height: 40,
      width: 70,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top:8.0, left: 8),
                child: Text(name,style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500
                ),),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom:8.0, right: 8),
                child: Image.asset(
                  image,
                  height:55 ,
                ),
              ),
            ),
          ],

        )),
  );
}

