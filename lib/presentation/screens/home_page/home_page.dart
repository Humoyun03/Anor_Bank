
import 'package:anor_bank/presentation/screens/home_page/home_page_component/my_home_comp.dart';
import 'package:anor_bank/presentation/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/model/enum/Status.dart';
import 'bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCheck = true;
  bool isCheck2 = true;

  final bloc = HomeBloc();


  @override
  void initState() {
    bloc.add(HomeInitEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  buildTop(context,state.totalBalanse?.toString() ?? ""),

                  myHomeComponent(context),
                  const SizedBox(
                    height: 10,
                  ),
                  buildNotes(),
                  const SizedBox(
                    height: 10,
                  ),
                  buildCarts(),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 0.5)),
                    child: Card(
                      color: Color(0xFFFFFFFF),
                      child: Theme(
                        data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          title: Container(
                            height: 41,
                            child: const Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Keshbek",
                                            style: TextStyle(
                                                color: Color(0xFF343333),
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 10, left: 10, top: 2),
                              child: Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 100,
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey, width: 1.5)),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        const Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 100,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Keshbek",
                                              style: TextStyle(
                                                  color: Color(0xFF343333),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "To`plangan",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "0 UZS",
                                              style: TextStyle(
                                                  color: Color(0xFF03943C),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(bottom: 18.0),
                                          child: Container(
                                            width: 100,
                                            height: 28,
                                            decoration: BoxDecoration(
                                                color: Color(0xFF86EFAD),
                                                borderRadius:
                                                BorderRadius.circular(20)),
                                            child: const Center(
                                              child: Text(
                                                "25,0% gacha",
                                                style: TextStyle(
                                                    color: Color(0xFF028334),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );

        }),
    );
  }

  Column buildCarts() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: ExpansionTile(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10), // Radiusni o'zgartiring
                ),
              ),
              trailing: isCheck2 == false
                  ? Text(
                "Hammasi",
                style: GoogleFonts.lato(
                    fontSize: 14, fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              )
                  : Text(
                "",
                style: GoogleFonts.lato(
                    fontSize: 14, fontWeight: FontWeight.w500),
                textAlign: TextAlign.start,
              ),
              expandedAlignment: Alignment.topRight,
              onExpansionChanged: (boolean) {
                // isCheck2 = !boolean;
                setState(() {
                  isCheck2 = !boolean;
                });
              },
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Kartalarim",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Icon(isCheck
                      ? Icons.keyboard_arrow_right
                      : Icons.keyboard_arrow_down),
                  Spacer(),
                ],
              ),
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Color(0xffF7F6EF),
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          border:
                          Border.all(color: Color(0xffdddfdc), width: 1),
                        ),
                        child: Row(
                          children: [
                            Image.asset("assets/images/uz_cart.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Agro",
                                      style: GoogleFonts.lato(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                      textAlign: TextAlign.start,
                                    ),
                                    Text(
                                      "**** 5655",
                                      style: GoogleFonts.lato(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xffC6D7D6)),
                                      textAlign: TextAlign.start,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Stack(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                    "assets/images/anor_immage.png"),
                              ),
                              Center(
                                child: Row(
                                  children: [
                                    Text(
                                      "3 805 ",
                                      style: GoogleFonts.lato(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xff46565F)),
                                      textAlign: TextAlign.start,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Text(
                                        ".15 uzs",
                                        style: GoogleFonts.lato(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xff9F9598)),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ])
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column buildNotes() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: ExpansionTile(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20), // Radiusni o'zgartiring
                ),
              ),
              trailing: const SizedBox(),
              expandedAlignment: Alignment.topLeft,
              onExpansionChanged: (boolean) {
                // isCheck = !boolean;
                setState(() {
                  isCheck = !boolean;
                });
              },
              title: Row(
                children: [
                  Text(
                    "Eslatma",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Icon(isCheck
                      ? Icons.keyboard_arrow_right
                      : Icons.keyboard_arrow_down),
                ],
              ),
              children: [
                SizedBox(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 0, right: 0, top: 4, bottom: 20),
                            child: Container(
                                width: 130,
                                height: 130,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      "assets/images/eslatmalar_bg.png",
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 26, left: 4, right: 4),
                                          child: Center(
                                            child: Text(
                                                "PRIME omonatli yillik 7%",
                                                style: GoogleFonts.nunitoSans(
                                                  color: Color(0xfffbd7d7),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                textDirection:
                                                TextDirection.ltr,
                                                maxLines: 2,
                                                textAlign: TextAlign.center),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 10),
                                          child: Image.asset(
                                            "assets/images/car.png",
                                            height: 50,
                                            width: 60,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 12, left: 18, right: 18),
                                          child: Center(
                                            child: Text("Batafsil",
                                                style: GoogleFonts.roboto(
                                                  color: Color(0xffac9aa1),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                textDirection:
                                                TextDirection.ltr,
                                                maxLines: 2,
                                                textAlign: TextAlign.center),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          );
                        })),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container buildTop(BuildContext context,String balanse) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height / 2.5,
      decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40))),
          color: Color(0xFF8B0037)),
      child: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    child: const Icon(
                      Icons.person_outline,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20),
                  const Text(
                    'ANORBANK',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 46,
                    width: 46,
                    child: FloatingActionButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 0,
                      highlightElevation: 0,
                      backgroundColor: const Color(0xFFCB0856),
                      child: const Icon(
                        Icons.sms,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    height: 46,
                    width: 46,
                    child: FloatingActionButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 0,
                      highlightElevation: 0,
                      backgroundColor: const Color(0xFFCB0856),
                      child: const Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 32),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Umumiy balans',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.price_check,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20),
                   Text(
                    balanse,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w800),
                  ),

                  
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 80,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        SizedBox(width: (index == 0) ? 12 : 6),
                        item('', 'Example'),
                        SizedBox(width: (index == 9) ? 12 : 6),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget item(String image, String title) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 80,
        width: 80,
        decoration: ShapeDecoration(
            color: const Color(0xFFCB0856),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: const Icon(
          Icons.phone_android,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
