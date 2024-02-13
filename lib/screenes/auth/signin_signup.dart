// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_colorful_tab/flutter_colorful_tab.dart';
import 'package:stores/widgets/widgets_auth/sign_in.dart';

import '../../widgets/widgets_auth/sign_up.dart';

class SignIn_and_SignUP_Screen extends StatefulWidget {
  const SignIn_and_SignUP_Screen({super.key});

  @override
  State<SignIn_and_SignUP_Screen> createState() =>
      _SignIn_and_SignUP_ScreenState();
}

class _SignIn_and_SignUP_ScreenState extends State<SignIn_and_SignUP_Screen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  final controller_1 = TextEditingController();
  final controller_2 = TextEditingController();

  List Tow_Screen = [
    SignIN_Screen(),
    Singup_Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //
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
                child: const Text(
                  'التسجيل وتسجيل الدخول',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal',
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

          ColorfulTabBar(
            indicatorHeight: 0,
            verticalTabPadding: 0.0,
            labelStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            selectedHeight: 48,
            unselectedHeight: 40,
            tabShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            tabs: [
              TabItem(
                color: Colors.blue,
                title: const Text('تسجيل الدخول'),
              ),
              TabItem(
                color: Colors.grey,
                title: const Text('التسجيل'),
              ),
            ],
            controller: _tabController,
          ),

          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: List.generate(
                2,
                (index) {
                  return Tow_Screen[index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
