// ignore_for_file: avoid_print, unused_field, sized_box_for_whitespace, camel_case_types, must_be_immutable, non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionBadgeWidget.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import 'package:responsive_units/responsive_units.dart';
import 'package:stores/screenes/profiles/profile.dart';
import '../../constes/colormanager.dart';
import '../../widgets/appBar/custom_appBar.dart';
import '../drawer/custom_drawer.dart';
import '../cart/cart.dart';
import '../casher/casher.dart';
import '../main/main_screen.dart';
import '../softwer/software.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> with TickerProviderStateMixin {
  // TabController? _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 4,
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }

  String searchText = '';
  final TextEditingController controller = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(context, controller, searchText),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.ltr,
        child: MotionTabBar(
          controller: _motionTabBarController,
          initialSelectedTab: "الرئيسية",
          useSafeArea: true,
          labels: const [
            "حسابي",
            "عربة التسوق",
            "البرمجيات",
            "تجهيز الكاشير",
            "الرئيسية"
          ],
          icons: const [
            Icons.person,
            Icons.shopping_cart,
            Icons.developer_mode_sharp,
            Icons.computer,
            Icons.home,
          ],
          badges: const [
            null,
            MotionBadgeWidget(
              text: '10+',
              textColor: Colors.white,
              color: Colors.red,
              size: 18,
            ),
            null,
            null,
            null,
          ],
          tabSize: 50,
          tabBarHeight: 55,
          textStyle: TextStyle(
            fontSize: 1.1.dg.sp,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lemonada',
          ),
          tabIconColor: Colors.blue[600],
          tabIconSize: 28.0,
          tabIconSelectedSize: 26.0,
          tabSelectedColor: Colors.blue[900],
          tabIconSelectedColor: Colors.white,
          tabBarColor: Colors.grey[200],
          onTabItemSelected: (int value) {
            setState(() {
              _motionTabBarController!.index = value;
            });
          },
        ),
      ),
      body: TabBarView(
        physics:
            const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        controller: _motionTabBarController,
        children: [
          MyProfile(),
          Cart_Screen(),
          Software_Screen(),
          Casher_Screen(),
          Main_Screen(),
        ],
      ),
      drawer: Custom_Drawer(),
    );
  }
}

class MainPageContentComponent extends StatefulWidget {
  const MainPageContentComponent({
    required this.title,
    required this.controller,
    Key? key,
  }) : super(key: key);

  final String title;
  final MotionTabBarController controller;

  @override
  State<MainPageContentComponent> createState() =>
      _MainPageContentComponentState();
}

class _MainPageContentComponentState extends State<MainPageContentComponent> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'initial text');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: ColorManager.w_F8,
          ),
          child: Column(
            children: [
              //

              const Text('Go to "X" page programmatically'),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => widget.controller.index = 0,
                child: const Text('Dashboard Page'),
              ),
              ElevatedButton(
                onPressed: () => widget.controller.index = 1,
                child: const Text('Home Page'),
              ),
              ElevatedButton(
                onPressed: () => widget.controller.index = 2,
                child: const Text('Profile Page'),
              ),
              ElevatedButton(
                onPressed: () => widget.controller.index = 3,
                child: const Text('Settings Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
