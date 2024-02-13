// Profile =======================================================

// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import 'package:scale_button/scale_button.dart';

import '../../../constes/navigators.dart';
import '../../../widgets/appBar/custom_appBar.dart';
import '../../../widgets/texts/custom_text.dart';
import 'order_details.dart';

class My_Order_Screen extends StatefulWidget {
  @override
  State<My_Order_Screen> createState() => My_Order_ScreenState();
}

class My_Order_ScreenState extends State<My_Order_Screen> {
  String searchText = '';
  final TextEditingController controller = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: Custom_AppBar(context, controller, searchText),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 2,
                            // width: double.maxFinite,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'الطلبات',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 1.8.dg.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Lemonada',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 2,
                            // width: double.maxFinite,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Table(border: TableBorder.all(), columnWidths: {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(5),
                      2: FlexColumnWidth(1),
                    }, children: [
                      TableRow(children: [
                        Center(
                          child: Container(
                            height: 3.5.h,
                            child: Custom_Text(text: 'الطلب', size: 1.3.dg.sp),
                          ),
                        ),
                        Center(
                            child:
                                Custom_Text(text: 'الحالة', size: 1.3.dg.sp)),
                        Center(child: Custom_Text(text: '  ', size: 13)),
                      ]),
                      custom_Table_1(),
                      custom_Table_1(),
                      custom_Table_1(),
                    ]),
                    SizedBox(height: 5.h),
                  ],
                ),
              ),
            ),
          )),
    );
  }

  TableRow custom_Table_1() {
    return TableRow(children: [
      Table(
        border: TableBorder.all(),
        children: [
          TableRow(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Custom_Text(text: '1', size: 1.3.dg.sp),
                ),
              ),
            ),
          ]),
          TableRow(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Custom_Text(text: '4500\nريال', size: 1.3.dg.sp),
              ),
            ),
          ]),
        ],
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Custom_Text(text: 'إلغاء الطلب', size: 1.3.dg.sp),
              Custom_Text(text: 'علي احمد', size: 1.3.dg.sp),
              Custom_Text(text: '09:03:31 2023-03-12', size: 1.3.dg.sp),
            ],
          ),
        ),
      ),
      ScaleButton(
        reverse: false,
        child: InkWell(
          onTap: () {
            pushNewScreen(context, Order_Details_Screen());
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Icon(
                Icons.remove_red_eye,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
