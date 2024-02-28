



import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ItemsData{
  String name;
  String image;

  ItemsData(this.name, this.image);
}
class ItemsGradientData{
  String name;
  String image;
  LinearGradient gradient;

  ItemsGradientData(this.name, this.image, this.gradient);
}

List<ItemsData> list = [
ItemsData("Kartaga\no`tkazmalar", "assets/images/credit_card.png"),
ItemsData("Mobil aloqaga to`lov", "assets/images/smartphone.png"),
ItemsData("AnorCheck", "assets/images/anorpay.png"),
ItemsData("Qr-skan", "assets/images/qr.png"),
ItemsData("Rekvizitlar\nbo`yicha to`lov", "assets/images/filenew.png"),
ItemsData("Muddatli\nto`lov", "assets/images/archive.png"),
ItemsData("Kreditga to`lov", "assets/images/percentages.png"),
];


List<ItemsGradientData> list2 = [
  ItemsGradientData("Mobil\noperatorlar", "assets/images/sim_card.png",
      LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFDDE6FC),
      Color(0xFFFCAFBC),]
  )),
  ItemsGradientData("Kommunal\nto`lovlar", "assets/images/counter.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFC5D8FD),
      Color(0xFFFDF6B4),]
  )),
  ItemsGradientData("Davlat\nxizmatlari", "assets/images/archive1.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFBCC1C9),
      Color(0xFFBBFFD6),]
  )),
  ItemsGradientData("Internet", "assets/images/router.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFC5D8FD),
      Color(0xFFFDC3C3),]
  )),
  ItemsGradientData("Transport", "assets/images/taxi.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFC5D8FD),
      Color(0xFFB4FFFF),]
  )),
  ItemsGradientData("Xayriya", "assets/images/heart.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFE6ECFD),
      Color(0xFFFAB1CB),]
  )),
  ItemsGradientData("Ta`lim", "assets/images/education.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFC5D8FD),
      Color(0xFFC1BDFF),]
  )),
  ItemsGradientData("TV va onlayn\n eshittirish", "assets/images/propaganda.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFEAEDFA),
      Color(0xFFFCF5C2),]
  )),
  ItemsGradientData("Mebellar", "assets/images/sofa.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFC5D8FD),
      Color(0xFFBEFFDB),]
  )),
  ItemsGradientData("Meditsina", "assets/images/medical.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFE0E9FD),
      Color(0xFFFFF8BB),]
  )),
  ItemsGradientData("Restoran\nva kafe", "assets/images/cafe.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFC5D8FD),
      Color(0xFF8FFFB9),]
  )),
  ItemsGradientData("Bolalar\nuchun", "assets/images/adoption.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFC5D8FD),
      Color(0xFFFFB6D0),]
  )),
  ItemsGradientData("Oziq\novqatlar", "assets/images/spice.png", LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,
      colors: [Color(0xFFC5D8FD),
      Color(0xFFB3FFFF),]
  )),

];
























