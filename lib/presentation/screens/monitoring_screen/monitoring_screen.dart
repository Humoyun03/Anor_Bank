import 'package:anor_bank/presentation/screens/monitoring_screen/bloc/monitoring_bloc.dart';
import 'package:anor_bank/presentation/screens/monitoring_screen/component/monitoring_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../data/model/enum/Status.dart';

class MonitoringScreen extends StatefulWidget {
  const MonitoringScreen({super.key});

  @override
  State<MonitoringScreen> createState() => _MonitoringScreenState();
}

class _MonitoringScreenState extends State<MonitoringScreen> {

  final bloc = MonitoringBloc();


  @override
  void initState() {
    bloc.add(MonitoringInitEvent());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<MonitoringBloc, MonitoringState>(
        listener: (context, state) {},
        builder: (context, state) {

          if(state.status == Status.LOADING){
            return Center(child: CircularProgressIndicator());
          }else if(state.status == Status.ERROR){
            return Center(child: Icon(Icons.error_outline));
          }else if(state.status == Status.SUCCESS){
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
                                Icon(
                                  Icons.arrow_back_ios_sharp,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Monitoring",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                                Image.asset(
                                  "assets/images/filter.png",
                                  height: 23,
                                  color: Colors.white,
                                ),
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
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 28.0, right: 78),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Oylik kirim",
                                          style: GoogleFonts.kanit(
                                              color: Color(0xFF008C37),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 13),
                                        ),
                                        Text(
                                          "0.0 UZS",
                                          style: GoogleFonts.kanit(
                                              color: Color(0xFF008C37),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Oylik chiqim",
                                          style: GoogleFonts.kanit(
                                              color: Color(0xFFC90010),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 13),
                                        ),
                                        Text(
                                          "- 0.0 UZS",
                                          style: GoogleFonts.kanit(
                                              color: Color(0xFFC90010),
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 6,
                                decoration: BoxDecoration(
                                    color: Color(0x17696767)),
                              ),
                              ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: state.list?.length,
                                  itemBuilder: (context, index) {
                                    return monitoringItem(
                                        state.list![index].to ?? "" ,state.list![index].amount ?? 0 , state.list![index].from ?? "", "");
                                  })
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ));
          }else{
            return const Placeholder();
          }
        },
      ),
    );
  }
}
