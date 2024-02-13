// Profile =======================================================

// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';

import '../../../widgets/appBar/custom_appBar.dart';
import '../../../widgets/listview/large_listview.dart';

class Favorite_Screen extends StatefulWidget {
  @override
  State<Favorite_Screen> createState() => Favorite_ScreenState();
}

class Favorite_ScreenState extends State<Favorite_Screen> {
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
                            'المفضلة',
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
                    Custom_Large_Listview(
                      context,
                      'https://mostaql.hsoubcdn.com/uploads/portfolios/2567364/649853429a899/Orange-and-Red-Gaming-Badge-Logo.png',
                      'برنامج إدارة المبيعات',
                      '1500 ريال',
                      1,
                      false,
                      false,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}