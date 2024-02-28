import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {

  @override
  Widget build(BuildContext context) {

    double sliderValue = 0;

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
                "Xavfsizlik",
                style: GoogleFonts.lato(
                    color: Color(0xff485564),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Spacer()
            ],
          ),

          SizedBox(height: 50,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 18,
              ),
              Text(
                "Сменить PIN",
                style: GoogleFonts.montserrat(
                    color: Color(0xff485564),
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
                color: Color(0xff52596B),
                size: 20,
              ),
              SizedBox(width: 18)
            ],
          ),

          SizedBox(height: 28,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 18,
              ),
              Text(
                "Maxfiy so'zni o'zgarttirish",
                style: GoogleFonts.montserrat(
                    color: Color(0xff485564),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
                color: Color(0xff52596B),
                size: 20,
              ),
              SizedBox(width: 18)
            ],
          ),

          SizedBox(height: 28,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 18,
              ),
              Text(
                "Ulangan qurilmalar",
                style: GoogleFonts.montserrat(
                    color: Color(0xff485564),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
                color: Color(0xff52596B),
                size: 20,
              ),
              SizedBox(width: 18)
            ],
          ),

          SizedBox(height: 28,),

          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              "Oyna yopilganda bloklash",
              style: GoogleFonts.montserrat(
                  color: Color(0xff485564),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),

          Row(
            children: [
              Expanded(
                flex: 10,
                child: Slider(
                  value: sliderValue.toDouble(),
                  min: 0,
                  max: 60,
                  activeColor: Color(0xff6e1423),
                  onChanged: (double value) {
                    setState(() {
                      sliderValue = value;
                    });
                  },
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "${sliderValue.toInt()} sek",
                  style: GoogleFonts.lato(
                    color: Color(0xff485564),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),



          Spacer(),

      InkWell(
        onTap: () {
          final snackBar = SnackBar(
            content: Text("Kesh tozalandi"),
            duration: Duration(seconds: 3),
            action: SnackBarAction(
              label: '',
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
            ),
            behavior: SnackBarBehavior.floating, // Qo'shilgan qismi uchun o'lchamni baholash
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            margin: EdgeInsets.all(10), // Xabar to'g'ri joylashishi
            padding: EdgeInsets.only(left: 8, right: 8,),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        splashColor: Color(0xb36e1423),
        highlightColor: Color(0x4d6e1423),
        child: Container(
          height: 50,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Keshni tozalash",
                style: GoogleFonts.montserrat(
                    color: Color(0xff485564),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
        ],
      ),
    );


  }
}
