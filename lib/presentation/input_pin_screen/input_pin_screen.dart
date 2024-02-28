import 'package:anor_bank/presentation/input_pin_screen/input_pin_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/create_password/create_password.dart';

class InputSecretPinPage extends StatefulWidget {
  const InputSecretPinPage({super.key});

  @override
  State<InputSecretPinPage> createState() => _InputSecretPinPageState();
}

class _InputSecretPinPageState extends State<InputSecretPinPage> {
  final controler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(

                    onTap: (){

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const CreatePassword()

                          )
                      );

                    },

                    child: Padding(
                      padding: EdgeInsets.only(left: 34, top: 50),
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset('assets/images/securty_words.png',
                    height: 150, width: 150, fit: BoxFit.fill),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "Mahfiy so'z",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(fontSize: 22),
                      color: Color(0xff505d6c),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(


                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Center(
                  child: Text(
                    "Lotin alifbosidagi harf va sonlardan\niborat kamida 6 ta belgi",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontSize: 12),
                      color: Color(0xff505d6c),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Center(
                              child: Container(
                                  height: 54,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    // Radiusni o'zingizga mos qiymatga o'zgartiring
                                    color: Color(0xfff3f6f5), // Container rangi
                                  ),
                                  child: Stack(
                                    children: [
                                      // Center(
                                      //   child: Text(
                                      //
                                      //     controler.text.isNotEmpty?"": "SMS kodni kiriting",
                                      //     style: GoogleFonts.karla(
                                      //       fontSize: 20,
                                      //       color: Colors.black12
                                      //
                                      //     ),
                                      //   ),
                                      //
                                      //
                                      // ),

                                      Center(
                                        child: TextField(
                                          controller: controler,
                                          textAlign: TextAlign.center,
                                          cursorOpacityAnimates: true,
                                          onChanged: (str) {
                                            if (str.length > 6) {
                                              controler.text = str.substring(0, 6);
                                            }
                                            if (str.length == 6 || str.length == 5) {
                                              setState(() {});
                                            }
                                          },
                                          decoration: InputDecoration(
                                            hintText: "Mahfiy so'zni kiriting",
                                            hintStyle: GoogleFonts.karla(
                                              fontSize: 20,
                                              color: Colors.black12,
                                            ),
                                            border: InputBorder.none,
                                            suffixIcon: Icon(
                                              Icons.remove_red_eye,
                                              color: Colors.black,
                                            ),
                                          ),
                                          keyboardType: TextInputType.number,
                                        ),
                                      )
                                    ],
                                  )),
                            ),
                          ),
                          InkWell(
                            onTap: () {


                              if(controler.text.length == 6) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const InputSecretPinPage()

                                    )
                                );
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 12, bottom: 20),
                              child: Container(
                                width: 359,
                                height: 54,
                                decoration: ShapeDecoration(
                                  color: controler.text.length == 6
                                      ? Color(0xffbd2426)
                                      : Color(0xfff3f6f5),
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
                                      'Davom etish',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.manrope(
                                        color: controler.text.length == 6
                                            ? Color(0xffe3dede)
                                            : Color(0xff363a39),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
               Padding(
                padding: EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Image.asset("assets/images/image_question_border.png",
                    // height: 150, width: 150, fit: BoxFit.fill),

                    Icon(Icons.question_mark,
                        color: Color(0xFF8A0037)
                    ),

                    Text(
                      'BATAFSIL',
                      style: TextStyle(fontSize: 18, color: Color(0xFF8A0037)),
                    ),

                  ],
                ),
              ),

               InkWell(

                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatePassword()));
                 },

                 child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child:
                      Text(
                        "MAXFIY SO'ZNI UNUTDINGIZMI?",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF8A0037)),
                      ),



                               ),
               )
            ],
          ),
        ),
      ),
    );
  }
}
