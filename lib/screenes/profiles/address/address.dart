// Profile =======================================================

// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import 'package:scale_button/scale_button.dart';

import '../../../constes/navigators.dart';
import '../../../widgets/appBar/custom_appBar.dart';
import '../../../widgets/Buttons/container_icon.dart';
import '../../../widgets/texts/custom_text.dart';
import '../edit/edit.dart';

class Address_Screen extends StatefulWidget {
  @override
  State<Address_Screen> createState() => Address_ScreenState();
}

class Address_ScreenState extends State<Address_Screen> {
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
                            'العناوين',
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
                    Card(
                      child: Container(
                        width: size.width / .9,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Custom_Text(
                                text:
                                    'علي أحمد \n ali \n ugugf \n 051654984 \n تبوك \n السعودية',
                                size: 1.3.dg.sp,
                                fontweight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        width: size.width / .9,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Custom_Text(
                                text:
                                    'علي أحمد \n ali \n ugugf \n 051654984 \n تبوك \n السعودية',
                                size: 1.3.dg.sp,
                                fontweight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ScaleButton(
                      reverse: false,
                      child: InkWell(
                        onTap: () {
                          //
                          pushNewScreen(context, Edit_Screen());
                        },
                        child: Button_Icon(
                          h: .55.dg.sfdg,
                          w: 2.5.dg.sfdg,
                          text: 'اضافة عنوان جديد',
                          size_Text: 1.3.dg.sp,
                          icon: Icons.add,
                          color_border: Colors.white,
                          color_Text: Colors.white,
                          color_icon: Colors.white,
                          background: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
