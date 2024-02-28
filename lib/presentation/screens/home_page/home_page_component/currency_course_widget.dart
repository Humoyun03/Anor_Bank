
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrencyCourseWidget extends StatefulWidget {
  const CurrencyCourseWidget({super.key});

  @override
  State<CurrencyCourseWidget> createState() => _CurrencyCourseWidgetState();
}

class _CurrencyCourseWidgetState extends State<CurrencyCourseWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Container(
        height: size / 3,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xFF3F0F0),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        padding: EdgeInsets.all(15),
        child: ExpandablePanel(
          collapsed: Column(),
          expanded: Column(
            children: [
              Text(
                'Hozirgi kurs',
                style: GoogleFonts.montserrat(fontSize: 16),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hozirgi kurs"),
                ],
              )
            ],
          ),
          header: Row(
            children: [
              Text(
                "Valyutalar kursi",
                style: GoogleFonts.montserrat(fontSize: 16),
              ),
            ],
          ),
          theme: ExpandableThemeData(
              hasIcon: false, iconPlacement: ExpandablePanelIconPlacement.left),
        ));
  }
}
