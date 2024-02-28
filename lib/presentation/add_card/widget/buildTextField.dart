import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

Padding buildTextField(TextEditingController controller, String hintText,
    bool hasIcon, TextInputType keyboardType, List<TextInputFormatter> list) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Container(
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xfff3f6f5), // Container rangi
        ),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextField(
                  controller: controller,
                  textAlign: TextAlign.start,
                  cursorOpacityAnimates: true,
                  onChanged: (str) {},
                  inputFormatters: list,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.switch_camera,
                          color:
                              hasIcon ? Color(0xffbd2426) : Colors.transparent,
                        )),
                    hintText: hintText,
                    hintStyle:
                        GoogleFonts.karla(fontSize: 16, color: Colors.black12),
                    border: InputBorder.none,
                  ),
                  keyboardType: keyboardType,
                ),
              ),
            )
          ],
        )),
  );
}
