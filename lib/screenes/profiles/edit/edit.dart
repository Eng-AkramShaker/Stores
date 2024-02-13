// Profile =======================================================

// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import 'package:scale_button/scale_button.dart';

import '../../../constes/navigators.dart';
import '../../../widgets/appBar/custom_appBar.dart';
import '../../../widgets/Buttons/container_icon.dart';
import '../../../widgets/textfield/TextField_1.dart';
import '../../../widgets/texts/custom_text.dart';

class Edit_Screen extends StatefulWidget {
  @override
  State<Edit_Screen> createState() => Edit_ScreenState();
}

class Edit_ScreenState extends State<Edit_Screen> {
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
                          'معلوماتك الشخصية',
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
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Custom_TextField(
                            'hint', Icons.star, Colors.white, controller),
                        Custom_TextField(
                            'hint', Icons.star, Colors.white, controller),
                        Custom_TextField(
                            'hint', Icons.star, Colors.white, controller),
                        const SizedBox(height: 10),
                        ScaleButton(
                          reverse: false,
                          child: Custom_Text(
                            text: 'تغير كلمة المرور',
                            size: 1.4.dg.sp,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ScaleButton(
                          reverse: false,
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                //
                                pushNewScreen(context, Edit_Screen());
                              },
                              child: Button_Icon(
                                h: .55.dg.sfdg,
                                w: double.infinity,
                                text: 'حفظ التعديل',
                                size_Text: 1.5.dg.sp,
                                color_border: Colors.blue,
                                color_Text: Colors.white,
                                color_icon: Colors.white,
                                background: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
