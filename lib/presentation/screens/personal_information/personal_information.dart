import 'package:anor_bank/data/response/full_info/full_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalInformation extends StatefulWidget {


  FullInfo? fullInfo;


  PersonalInformation(this.fullInfo);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              SizedBox(width: 18),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.keyboard_arrow_left_outlined,
                  color: Color(0xff485564),
                  size: 28,
                ),
              ),
              Spacer(),
              Text(
                "Shaxsiy ma'lumotlar",
                style: GoogleFonts.lato(
                    color: Color(0xff485564),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Spacer()
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 140,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color(0xFFE1E2E1)),
                      child: Image.asset(
                        "assets/images/user_image.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 106,
                    child: Container(
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(11)),
                          color: Colors.white),
                      child: Icon(Icons.camera_alt,
                          color: Color(0xff9C0C1E), size: 20),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ism${widget.fullInfo?.firstname ?? ""}",
                        style: GoogleFonts.montserrat(
                          color: Color(0xffA6A6AB),
                          fontSize: 12,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Familiya ${ widget.fullInfo?.lastname ?? ""}",
                        style: GoogleFonts.montserrat(
                          color: Color(0xffA6A6AB),
                          fontSize: 12,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          "Otasining ismi",
                          style: GoogleFonts.montserrat(
                            color: Color(0xffA6A6AB),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 18, right: 18),
            child: Container(
              width: double.infinity,
              height: 280,
              decoration: BoxDecoration(
                color:Colors.white,

                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Color(0xffdddfdc), width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14, top: 10),
                    child: Text(
                      "Telefon raqami",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff828A8C),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, top: 4),
                    child: Text(
                      widget.fullInfo?.phone ?? "",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff515963),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      color: Color(0xffF3F6F5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 14, bottom: 20),
                            child: Text(
                              "Pasport seriyasi va raqami",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff828A8C),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_arrow_right_outlined,
                            color: Color(0xff6e1423),
                            size: 28,
                          ),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 14, bottom: 20),
                            child: Text(
                              "Tug'ilgan sanasi",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff828A8C),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      color: Color(0xffF3F6F5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 14, bottom: 20),
                            child: Text(
                              "JSHSHIR",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff828A8C),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Spacer(),
                          Image.asset(
                            "assets/images/image_question.png",
                            height: 28,
                            width: 28,
                          ),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Container(
                      width: double.infinity,
                      height: 55,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(
                              "Manzil",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff828A8C),
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14,top: 4),
                            child: Text(
                              "Ko'rsatilmagan",
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff515963),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
