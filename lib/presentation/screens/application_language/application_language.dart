import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationLanguage extends StatefulWidget {
  const ApplicationLanguage({super.key});

  @override
  State<ApplicationLanguage> createState() => _ApplicationLanguageState();
}

class _ApplicationLanguageState extends State<ApplicationLanguage> {


  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
          ),
          Row(
            children: [
              SizedBox(width: 16),
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
              SizedBox(
                width: 10,
              ),
              Text(
                "Ilova tili",
                style: GoogleFonts.lato(
                  color: Color(0xff485564),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer()
            ],
          ),
          SizedBox(
            height: 40,
          ),
          RadioListTile<int>(
            title:  Text(
              "Русский",
              style: GoogleFonts.mulish(
                color: Color(0xff485564),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            value: 1,
            groupValue: selectedValue,
            activeColor: Color(0xFF8A0037),
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },

          ),
          RadioListTile<int>(
            title:  Text(
              "O'zbek",
              style: GoogleFonts.mulish(
                color: Color(0xff485564),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            value: 2,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
            activeColor: Color(0xFF8A0037),
          ),

          RadioListTile<int>(
            title:  Text(
              "English",
              style: GoogleFonts.mulish(
                color: Color(0xff485564),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            value: 3,
            groupValue: selectedValue,
            onChanged: (value) {
              setState(() {
                selectedValue = value!;
              });
            },
            activeColor: Color(0xFF8A0037),
          ),


        ],
      ),
    );
  }


}
