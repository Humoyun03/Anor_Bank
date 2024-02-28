


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../monitoring_screen/component/monitoring_item.dart';

class InsuranceScreen extends StatefulWidget {
  const InsuranceScreen({super.key});

  @override
  State<InsuranceScreen> createState() => _InsuranceScreenState();
}

class _InsuranceScreenState extends State<InsuranceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Color(0xFF8A0037),
              ),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset("assets/images/anor.png",
                        height: 200, color: Color(0x4FFC0266)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50, right: 20, left: 20),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.white,
                        ),
                        Text(
                          "Sug`urta",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        // Image.asset(
                        //   "assets/images/filter.png",
                        //   height: 23,
                        //   color: Colors.white,
                        // ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Container(
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(top:23.0, left: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFF8A0037),
                            borderRadius: BorderRadius.circular(18)
                          ),
                          child: Center(child: const Text("Hammasi", style: TextStyle(color: Colors.white, fontSize: 12),)),
                        ),
                        SizedBox(height: 20,),
                        const SizedBox(height: 30,
                          child: Text("Hamkorni tanlang", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17 , color: Color(
                              0xFF757474)),),
                        ),
                        SizedBox(height: 5,),
                        insuranceItem()
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}


Widget insuranceItem(){
  return Container(
    height: 110,
    width: 110,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Color(0xFFD2D2D2), width: 1.5),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          const SizedBox(height: 7,),
          Image.asset(
            'assets/images/agrobank.png',
            width: 51,
            height: 51,
          ),
          const SizedBox(height: 7,),

          const Text("Agrobank", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
        ],
      ),
    ),
  );
}


