// ignore_for_file: camel_case_types, unused_local_variable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/home_controller/home_controller.dart';
import '../../widgets/cards/card_img.dart';
import '../drawer/custom_drawer.dart';
import '../../widgets/listview/large_listview.dart';
import '../../widgets/slider/custom_slider.dart';

class Casher_Screen extends StatefulWidget {
  const Casher_Screen({super.key});

  @override
  State<Casher_Screen> createState() => _Casher_ScreenState();
}

class _Casher_ScreenState extends State<Casher_Screen> {
  @override
  Widget build(BuildContext context) {
    final crlHome = Provider.of<Controller_Home>(context, listen: false);

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Custom_Slider(),

            Custom_Large_Listview(
              context,
              'https://s.manarat-alasr.com/products-image/2/1640625409%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D8%AC%20%D8%A5%D8%AF%D8%A7%D8%B1%D8%A9%20%D8%A7%D9%84%D9%85%D8%A8%D9%8A%D8%B9%D8%A7%D8%AA.jpg.jpg',
              'برنامج إدارة المبيعات',
              '1500 ريال',
              15,
              true,
              true,
            ),

            // Row  =================================================================

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Custom_Container_img(context, 'assets/images/del.png'),
                  Custom_Container_img(context, 'assets/images/pre.png'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Custom_Container_img(context, 'assets/images/sup.png'),
                  Custom_Container_img(context, 'assets/images/mai.png'),
                ],
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
      drawer: const Custom_Drawer(),
    ));
  }
}
