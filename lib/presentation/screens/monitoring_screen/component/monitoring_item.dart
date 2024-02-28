import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget monitoringItem(String title, int summa, String location, String hour) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 85,
      decoration: BoxDecoration(
        color: Color(0xF7EFEEEE),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFD2D2D2)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 43,
              width: 38,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color(0xFFD2D2D2)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 7,),
                  Image.asset(
                    'assets/images/agrobank.png',
                    width: 21,
                    height: 21,
                  ),
                  Text("Agrobank", style: TextStyle(fontSize: 4, fontWeight: FontWeight.w600),),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          title,
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          summa.toString(),
                          maxLines: 2,
                          style: GoogleFonts.poppins(
                              fontSize: 17, fontWeight: FontWeight.w500, color: Colors.green),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          location,
                          style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          hour,
                          style: GoogleFonts.poppins(fontSize: 10, color: Colors.grey),
                        ),
                      ],
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
