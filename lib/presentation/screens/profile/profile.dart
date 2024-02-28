import 'dart:ui';

import 'package:anor_bank/presentation/screens/application_language/application_language.dart';
import 'package:anor_bank/presentation/screens/profile/bloc/profile_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/model/enum/Status.dart';
import '../application_them/aplication_them.dart';
import '../personal_information/personal_information.dart';
import '../security/security.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var isLogOutShow = false;

  final bloc = ProfileBloc();

  @override
  void initState() {
    bloc.add(ProfileInitEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {

          if(state.status == Status.SUCCESS) {

            return Scaffold(
                body: Stack(
                  children: [
                    Container(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      decoration: const BoxDecoration(
                        color: Color(0xFF8A0037),
                      ),
                      child: Stack(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Image.asset("assets/images/anor.png",
                                height: 200, color: Color(0x4FFC0266)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60, right: 20, left: 20),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.keyboard_arrow_left,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Text(
                                  "Profil",
                                  style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isLogOutShow = true;
                                    });

                                    logOutDialog(context);
                                  },
                                  child: Icon(Icons.logout,
                                      size: 30, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 110),
                      child: Container(
                        height: double.maxFinite,
                        width: double.maxFinite,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Column(children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20, top: 20),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF4F7F4),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20))),
                                  child: Image.asset(
                                    "assets/images/user_image.png",
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 18, top: 18),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.fullInfo?.phone ?? "",
                                      style: GoogleFonts.aBeeZee(
                                          color: Color(0xff4B525F),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.only(top: 20, right: 20),
                                      child: Container(
                                        height: 50,
                                        width:
                                        MediaQuery.of(context).size.width - 158,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffA9B8BE),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Column(
                                          children: [
                                            Center(
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.only(top: 10),
                                                child: Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      flex: 4,
                                                      child: Padding(
                                                        padding:
                                                        const EdgeInsets.only(
                                                            left: 20),
                                                        child: Text(
                                                          "identifikatsiyalanmagan foydalanuvch",
                                                          style: GoogleFonts.aBeeZee(
                                                              color:
                                                              Color(0xffF8F9F8),
                                                              fontSize: 11,
                                                              fontWeight:
                                                              FontWeight.w600),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                        flex: 1,
                                                        child: Image.asset(
                                                          "assets/images/question.png",
                                                          height: 24,
                                                          width: 24,
                                                          color: Colors.white,
                                                        ))
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
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Flexible(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              child: SingleChildScrollView(
                                child: Container(
                                  color: Color(0xffF4F7F4),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PersonalInformation(state.fullInfo)));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 16),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                "assets/images/person.png",
                                                height: 44,
                                                width: 34,
                                                color: Color(0xffFC9482),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(top: 10),
                                                child: Text(
                                                  "Shaxsiy ma'lumotlar",
                                                  style: GoogleFonts.aBeeZee(
                                                      color: Color(0xffF5906B),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, right: 20),
                                                child: Icon(
                                                  Icons.info_outline,
                                                  size: 24,
                                                  color: Color(0xffF5906B),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 6),
                                        child: const Divider(
                                          color: Color(0xFFFFFFFF),
                                          height: double.minPositive,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      AplicationTheme()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 16),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                "assets/images/settings.png",
                                                height: 44,
                                                width: 40,
                                                fit: BoxFit.fill,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(top: 10),
                                                child: Text(
                                                  "Ilova mavzusi",
                                                  style: GoogleFonts.aBeeZee(
                                                      color: Color(0xff4E5868),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 6),
                                        child: const Divider(
                                          color: Color(0xFFFFFFFF),
                                          height: double.minPositive,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ApplicationLanguage()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 16),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                "assets/images/languach.png",
                                                height: 44,
                                                width: 40,
                                                fit: BoxFit.fill,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(top: 10),
                                                child: Text(
                                                  "Til",
                                                  style: GoogleFonts.aBeeZee(
                                                      color: Color(0xff4E5868),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10, right: 20),
                                                child: Text(
                                                  "O'zbek",
                                                  style: GoogleFonts.aBeeZee(
                                                      color: Color(0xff4E5868),
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 6),
                                        child: const Divider(
                                          color: Color(0xFFFFFFFF),
                                          height: double.minPositive,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SecurityPage()));
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 16),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                "assets/images/securty.png",
                                                height: 44,
                                                width: 48,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(top: 10),
                                                child: Text(
                                                  "Xavfsizlik",
                                                  style: GoogleFonts.aBeeZee(
                                                      color: Color(0xff4E5868),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 6),
                                        child: const Divider(
                                          color: Color(0xFFFFFFFF),
                                          height: double.minPositive,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 20, top: 16),
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              "assets/images/shartnomat.png",
                                              height: 44,
                                              width: 48,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10),
                                              child: Text(
                                                "Universal shartnoma",
                                                style: GoogleFonts.aBeeZee(
                                                    color: Color(0xff4E5868),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 6),
                                        child: const Divider(
                                          color: Color(0xFFFFFFFF),
                                          height: double.minPositive,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(left: 20, top: 16),
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              "assets/images/shartnomat.png",
                                              height: 44,
                                              width: 48,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10),
                                              child: Text(
                                                "Xavfsizlik siyosati",
                                                style: GoogleFonts.aBeeZee(
                                                    color: Color(0xff4E5868),
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ),
                                            Spacer(),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 20,
                                              ),
                                              child: Image.asset(
                                                "assets/images/info.png",
                                                height: 40,
                                                width: 40,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 6),
                                        child: const Divider(
                                          color: Color(0xFFFFFFFF),
                                          height: double.minPositive,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Text(
                                          "v 1.5.4",
                                          style: GoogleFonts.montserrat(
                                            color: Color(0xff4E5868),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                    if (isLogOutShow) logOutDialog(context),
                  ],
                ));

          }else if(state.status == Status.LOADING){
            return Center(child: CircularProgressIndicator());
          }else if(state.status == Status.ERROR){
            return Center(child: Icon((Icons.error_outline)));
          }else{
            return Placeholder();
          }
        },
      ),
    );
  }

  Widget logOutDialog(context) {
    return GestureDetector(
      onTap: () {
        isLogOutShow = false;

        setState(() {});
      },
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.5),
        body: Center(
          child: InkWell(
            onTap: () {
              isLogOutShow = false;
            },
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 280,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        isLogOutShow = false;
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 280,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/image_qustion.png",
                                height: 130, width: 130, fit: BoxFit.contain),
                            Column(
                              children: [
                                Text(
                                  "Haqiqatdan ham",
                                  style: GoogleFonts.catamaran(
                                    color: Color(0xff4A5163),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "ilovadan chiqmoqchimisiz?",
                                  style: GoogleFonts.catamaran(
                                    color: Color(0xff4A5163),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      isLogOutShow = false;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 50,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xffE2E0DE),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Bekor qilish",
                                            style: GoogleFonts.mulish(
                                              color: Color(0xffFFFFFC),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: () {
                                      isLogOutShow = false;

                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 50,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xe66e1423),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Tasdiqlash",
                                            style: GoogleFonts.mulish(
                                              color: Color(0xffFFFFFC),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
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
                )),
          ),
        ),
      ),
    );
  }
}
