// ignore_for_file: camel_case_types, unused_local_variable, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import 'package:scale_button/scale_button.dart';
import 'package:stores/widgets/Buttons/select_button_img.dart';
// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import '../../../widgets/texts/custom_text.dart';
import '../../widgets/Buttons/container_icon.dart';
import '../../widgets/Buttons/scale_button.dart';
import '../../widgets/Buttons/select_button_text.dart';
import '../../widgets/images/img_network_fill.dart';
import '../../widgets/row/custom_row.dart';
import '../../widgets/textfield/TextField_1.dart';

// Profile =======================================================

class Cart_Screen extends StatefulWidget {
  const Cart_Screen({super.key});

  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
  String searchText = '';
  final TextEditingController controller = TextEditingController(text: '');

  bool flag_1 = false;
  bool flag_2 = false;

  int count = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // =====================================================================
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
                      margin: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: const Text(
                        ' عربة التسوق',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
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

                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ScaleButton(
                        reverse: false,
                        child: Button_Icon(
                          h: .55.dg.sfdg,
                          w: .1.dg.sfdg,
                          text: 'عرض الاسعار',
                          size_Text: .15.dg.sfdg,
                          color_border: Colors.transparent,
                          color_Text: Colors.white,
                          background: Colors.blue,
                          color_overlayColor: Colors.grey,
                          W_SizedBox: 0,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                // ==============================================================================
                const SizedBox(height: 5),

                Column(
                  children: [
                    Table(
                        border: TableBorder.all(color: Colors.blue),
                        columnWidths: const {
                          0: FlexColumnWidth(2),
                        },
                        children: [
                          TableRow(children: [
                            Container(
                              height: 1.3.dg.sfdg,
                              child: Stack(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Custom_img_Network_fill(
                                            'https://mostaql.hsoubcdn.com/uploads/portfolios/2567364/649853429a899/Orange-and-Red-Gaming-Badge-Logo.png',
                                            double.infinity,
                                            1.2.dg.sfdg,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: .2.dg.sfdg),
                                            child: Custom_Text(
                                              text: 'عطر بلاك بيرو',
                                              size: 1.7.dg.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: double.infinity,
                                        padding:
                                            EdgeInsets.only(left: .3.dg.sfdg),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Custom_Scale_Button(
                                              Colors.grey[300],
                                              Colors.black,
                                              13,
                                              Icon(Icons.remove),
                                              () {
                                                setState(() {
                                                  count--;
                                                });
                                              },
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 13),
                                              child: Custom_Text(
                                                text: '$count',
                                                size: 2.5.dg.sp,
                                              ),
                                            ),
                                            Custom_Scale_Button(
                                              Colors.grey[300],
                                              Colors.black,
                                              13,
                                              Icon(Icons.add),
                                              () {
                                                setState(() {
                                                  count++;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    left: 0,
                                    child: Custom_Scale_Button(
                                      Colors.white,
                                      Colors.red,
                                      12,
                                      Icon(Icons.delete),
                                      () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])
                        ]),
                    Table(
                        border: TableBorder.all(color: Colors.blue),
                        columnWidths: const {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(1),
                        },
                        children: [
                          custom_Table_2(
                            'سعر الوحدة : ',
                            '176  ريال',
                            'الاجمالي : ',
                            '123 ريال',
                          ),
                        ]),
                  ],
                ),

                //

                const SizedBox(height: 8),
                // ======================================================================

                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Custom_Text(text: 'عربة التسوق فارغة', size: 13),
                // ),

                // ======================================================================

                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Custom_Text(
                        text: 'المجموع',
                        size: 13,
                        color: Colors.white,
                      ),
                      Custom_Text(
                        text: '152 ريال',
                        size: 13,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                // ======================================================================
                const SizedBox(height: 10),

                Row(
                  children: [
                    Flexible(
                      child: Custom_TextField(
                        'ادخل كوبون الخصم',
                        Icons.text_decrease,
                        Colors.white,
                        controller,
                      ),
                    ),
                    SizedBox(width: 8),
                    ScaleButton(
                      reverse: false,
                      child: Button_Icon(
                        h: .55.dg.sfdg,
                        w: .1.dg.sfdg,
                        text: 'اعتمد الكوبون',
                        size_Text: .15.dg.sfdg,
                        color_border: Colors.transparent,
                        color_Text: Colors.white,
                        background: Colors.blue,
                        color_overlayColor: Colors.grey,
                        W_SizedBox: 0,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),

                // ======================================================================
                const SizedBox(height: 10),

                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Custom_Text(
                        text: 'عنوان الشحن',
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),

                Container(
                  height: 3.6.dg.sfdg,
                  width: double.infinity,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Select_Button_text(
                                4.5.dg.sfdg,
                                flag_1,
                                'محمد احمد',
                                '05545262625',
                                () {
                                  setState(() => flag_1 = !flag_1);
                                },
                              ),
                            ),
                            Select_Button_text(
                              4.5.dg.sfdg,
                              flag_2,
                              'محمد احمد',
                              '05545262625',
                              () {
                                setState(() => flag_2 = !flag_2);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // Custom_Drop2(hintText: 'ali'),
                SizedBox(height: .1.dg.sfdg),

                Center(
                  child: Card(
                    child: Container(
                        width: size.width / 1.2,
                        height: 60,
                        // decoration: BoxDecoration(
                        //     color: Colors.grey[100],
                        //     border: Border.all(width: .8, color: Colors.black),
                        //     borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Custom_Text(
                              text: 'اريد استخدام عنوان جديد',
                              size: 17,
                              color: Colors.grey),
                        )),
                  ),
                ),
                // ======================================================================
                const SizedBox(height: 10),

                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.car_crash,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Custom_Text(
                        text: 'طرق الشحن',
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                // Custom_Drop2(hintText: 'ali'),

                const SizedBox(height: 10),

                Table(
                    border: TableBorder.all(color: Colors.black38),
                    columnWidths: {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(1),
                      2: FlexColumnWidth(1),
                      3: FlexColumnWidth(1),
                    },
                    children: [
                      custom_Table_1(
                          'اسم المنتج', "الكمية", "السعر", "الاجمالي"),
                    ]),
                Table(
                    border: TableBorder.all(color: Colors.black38),
                    columnWidths: {
                      0: FlexColumnWidth(2),
                    },
                    children: [
                      TableRow(children: [
                        Container(
                          color: Colors.grey[300],
                          child: Column(
                            children: [
                              custom_Row('0 ريال', 'المجموع'),
                              custom_Row('0 ريال', 'الشحن  ( ) '),
                              custom_Row('0 ريال', 'الاجمالي النهائي'),
                            ],
                          ),
                        ),
                      ])
                    ]),
                // ==================================================================

                const SizedBox(height: 10),

                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      Custom_Text(
                        text: 'عنوان الشحن',
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                Container(
                  height: 3.9.dg.sfdg,
                  width: double.infinity,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Select_Button_Img(
                                4.5.dg.sfdg,
                                flag_1,
                                'محمد احمد',
                                '05545262625',
                                () {
                                  setState(() => flag_1 = !flag_1);
                                },
                              ),
                            ),
                            Select_Button_Img(
                              4.5.dg.sfdg,
                              flag_2,
                              'محمد احمد',
                              '05545262625',
                              () {
                                setState(() => flag_2 = !flag_2);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // ========================================================================

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ScaleButton(
                    reverse: false,
                    child: Button_Icon(
                      h: .55.dg.sfdg,
                      w: double.infinity,
                      text: 'متابعة للتسوق',
                      size_Text: .18.dg.sfdg,
                      color_border: Colors.blue,
                      color_Text: Colors.white,
                      background: Colors.blue,
                      color_overlayColor: Colors.grey,
                      onPressed: () {},
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ScaleButton(
                    reverse: false,
                    child: Button_Icon(
                      h: .55.dg.sfdg,
                      w: double.infinity,
                      text: 'تأكيد الطلب',
                      size_Text: .18.dg.sfdg,
                      color_border: Colors.blue,
                      color_Text: Colors.white,
                      background: Colors.blue,
                      color_overlayColor: Colors.grey,
                      onPressed: () {},
                    ),
                  ),
                ),

                SizedBox(height: .3.dg.sfdg),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

TableRow custom_Table_1(name, amount, price, total) {
  return TableRow(children: [
    Padding(
      padding: const EdgeInsets.all(4),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Custom_Text(text: '$name', size: 1.3.dg.sp),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(4),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Custom_Text(text: '$amount', size: 1.3.dg.sp),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(4),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Custom_Text(text: '$price', size: 1.3.dg.sp),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(4),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Custom_Text(text: '$total', size: 1.3.dg.sp),
        ),
      ),
    ),
  ]);
}

// =============================================================================

TableRow custom_Table_2(text_1, details_1, text_2, details_2) {
  return TableRow(children: [
    Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Custom_Text(text: '$text_1', size: 1.5.dg.sp),
            Custom_Text(text: '$details_1', size: 1.5.dg.sp),
          ],
        ),
      ),
    ),
    Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Custom_Text(text: '$text_2', size: 1.5.dg.sp),
            Custom_Text(text: '$details_2', size: 1.5.dg.sp),
          ],
        ),
      ),
    ),
  ]);
}
