import 'package:anor_bank/presentation/screens/payment_screen/custom_data/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/fast_payment_item.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  int? _value = 0;
  int selected = 0;

  var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation:0.3,
        toolbarHeight: 70,
        backgroundColor: const Color(0xFFF1F1F1),
        shadowColor: Theme.of(context).colorScheme.shadow,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(2),
          ),
        ),
        title: Column(
          children: [
            // Image.asset(
            //   "assets/images/img.png",
            //   width: 170,
            //   height: 30,
            //   fit: BoxFit.cover,
            // ),
            const SizedBox(height: 6),
            InputSearch(context, myController),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const SizedBox(
              height: 40,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text("Tezkor amallar", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17 ),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  if (index == list.length - 1) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: InkWell(
                          onTap: (){},
                          child: categoryItem2(
                              list[index].name ?? '',
                              list[index].image ?? '')),
                    );
                  } else {
                    return InkWell(
                        onTap: (){},
                        child: categoryItem2(
                            list[index].name ?? '',
                            list[index].image ?? ''));
                  }
                },
              ),
            ),
            const SizedBox(height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text("Hamkorlar toifasi", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17 ),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        spacing: 4.0,
                        children: List<Widget>.generate(
                          3,
                              (int index) {
                            var list = [
                              "Hammasi",
                              "Keshkek",
                              "Muddatli to'lov"
                            ];
                            return ChoiceChip(
                              showCheckmark: false,
                              label: Text(
                                list[index],
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                    color: _value == index
                                        ? Colors.white
                                        : Colors.grey.shade700),
                              ),
                              selected: _value == index,
                              onSelected: (bool selected) {
                                setState(() {
                                  _value = selected ? index : null;
                                });
                              },
                              selectedColor: const Color(0xFF363636),
                              disabledColor: Colors.grey.shade400,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 2.2),
              ),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: list2.length,
              itemBuilder: (context, index) {
                if(index == list2.length-1){
                  return Padding(
                    padding: const EdgeInsets.only(bottom:14.0),
                    child: categoryItem(
                      list2[index].name ?? "",
                      list2[index].image ?? "",
                      list2[index].gradient,
                    ),
                  );
                }else{
                  return categoryItem(
                    list2[index].name ?? "",
                    list2[index].image ?? "",
                    list2[index].gradient,
                  );
                }

              },
            ),
          ],
        ),
      ),

    );
  }
}
