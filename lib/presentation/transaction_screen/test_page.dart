import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TestPage extends StatefulWidget {

  String amount;


  TestPage(this.amount);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
   return
     Text(widget.amount,style: GoogleFonts.roboto(
     fontSize: 20,
     ),);
  }
}
