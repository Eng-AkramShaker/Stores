// Profile =======================================================

// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import '../../../widgets/appBar/custom_appBar.dart';
import '../../../widgets/texts/custom_text.dart';

class Details_Screen extends StatefulWidget {
  @override
  State<Details_Screen> createState() => Details_ScreenState();
}

class Details_ScreenState extends State<Details_Screen> {
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
                            'تفاصيل المرتجع',
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
                    // ======================================================================

                    Table(border: TableBorder.all(), columnWidths: {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(5),
                    }, children: [
                      custom_Table_1('رقم الارجاع', '#25'),
                      custom_Table_1("تاريخ الارجاع", '23-09-2023'),
                      custom_Table_1('رقم الارجاع', '#25'),
                      custom_Table_1("تاريخ الارجاع", '23-09-2023'),
                    ]),

                    // ======================================================================
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Custom_Text(text: 'المنتج', size: 1.8.dg.sp),
                          ],
                        ),
                      ),
                    ),

                    // ====================================================================

                    Table(border: TableBorder.all(), columnWidths: {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(2),
                    }, children: [
                      custom_Table_1(
                          'رقم الارجاع\n[55231]\nاللون :أسود\nالمقاس : L',
                          '#25\n d5'),
                      custom_Table_1(
                          "سعر الوحدة : 45 ريال", 'الاجمالي : 45 ريال'),
                    ]),
                    // ======================================================================
                    const SizedBox(height: 30),

                    Table(border: TableBorder.all(), columnWidths: {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(5),
                    }, children: [
                      custom_Table_1('تكاليف اخري', '25'),
                      custom_Table_1("الاجمالي الكلي", '223'),
                    ]),
                    // ======================================================================
                    const SizedBox(height: 30),

                    Table(border: TableBorder.all(), columnWidths: {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(5),
                    }, children: [
                      custom_Table_1('مفتوح', 'السبب'),
                      custom_Table_1(" لا", 'خطا في المنتج'),
                    ]),
                    Table(border: TableBorder.all(), columnWidths: {
                      0: FlexColumnWidth(2),
                    }, children: [
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Custom_Text(
                                  text: ' تفاصيل او عيوب اخري',
                                  size: 1.3.dg.sp),
                            ),
                          ),
                        ),
                      ])
                    ]),

                    // ======================================================================
                    const SizedBox(height: 10),

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Custom_Text(text: 'سجل المرتجع', size: 1.8.dg.sp),
                          ],
                        ),
                      ),
                    ),

                    // ======================================================================
                    const SizedBox(height: 10),

                    Table(border: TableBorder.all(), columnWidths: {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(1.6),
                      2: FlexColumnWidth(2),
                    }, children: [
                      TableRow(children: [
                        Center(
                          child: Container(
                              height: 4.h,
                              child: Custom_Text(
                                  text: 'تاريخ المرتجع', size: 1.3.dg.sp)),
                        ),
                        Center(
                            child: Custom_Text(
                                text: 'حالة المرتجع', size: 1.3.dg.sp)),
                        Center(
                            child:
                                Custom_Text(text: 'ملاحظات', size: 1.3.dg.sp)),
                      ]),
                      Row_table(),
                      Row_table(),
                      Row_table(),
                    ]),

                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          )),
    );
  }

  TableRow Row_table() {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custom_Text(text: '25-09-2023', size: 1.3.dg.sp),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            children: [
              Custom_Text(text: 'قيد المرتجع', size: 1.3.dg.sp),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Custom_Text(text: "الاسباب مقبولة", size: 1.3.dg.sp),
          ),
        ),
      ),
    ]);
  }

  TableRow custom_Table_1(text, details) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Custom_Text(text: '$text', size: 1.3.dg.sp),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Custom_Text(text: '$details', size: 1.3.dg.sp),
            ],
          ),
        ),
      ),
    ]);
  }
}
