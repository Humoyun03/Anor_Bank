import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessCodePage extends StatefulWidget {
  const SuccessCodePage({super.key});

  @override
  State<SuccessCodePage> createState() => _SuccessCodePageState();
}

class _SuccessCodePageState extends State<SuccessCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Image.asset("assets/images/check.png", height: 200,),
              SizedBox(height: 15,),
              Text("MUVAFFAQIYATLI", style: TextStyle(color: Colors.green, fontSize: 22, fontWeight: FontWeight.w700),),
              SizedBox(height: 20,),
              const Text("Maxfiy so`z muvaffaqiyatli \no`zgartirildi", style: TextStyle(color: Color(
                  0xFF4F4F4F), fontSize: 18, fontWeight: FontWeight.w700),textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              const Text("Yangi maxfiy so`zni eslab qoling,\nundan foydalanish:", style: TextStyle(color: Color(
                  0xFF4F4F4F), fontSize: 18, fontWeight: FontWeight.w700)),
              SizedBox(height: 20,),
              Row(
                children: [
                  const SizedBox(width: 50,),
                  Image.asset("assets/images/unlock.png", height: 30,color: Color(
                      0xFFC20034),),
                  SizedBox(width: 10,),
                  Text("Ilovaga darkish", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w700),),

                ],

              ),
              SizedBox(height : 20 ),
              Row(
                  children:[
                    // SizedBox(width: 30,),
                    Icon(Icons.supervised_user_circle, color: Color(
                        0xFFC20034),),
                    SizedBox(width: 10,),
                    Text("Bankga murojaat\nqilayotganingizda identifikatsiya\nuchun ", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w700),),

                  ]
              ),
              SizedBox(height: 150,),
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
                        'Yopish',
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
    );
  }
}
