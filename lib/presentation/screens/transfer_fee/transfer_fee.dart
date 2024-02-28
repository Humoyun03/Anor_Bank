import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransferFeePage extends StatefulWidget {
  String fee;

  TransferFeePage(this.fee);

  @override
  State<TransferFeePage> createState() => _TransferFeePageState();
}

class _TransferFeePageState extends State<TransferFeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            widget.fee,
            style: TextStyle(
                color: Colors.green, fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
