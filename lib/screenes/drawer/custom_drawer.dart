// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import 'package:scale_button/scale_button.dart';
import 'package:sidebar_drawer/sidebar_drawer.dart';
import '../../widgets/Buttons/container_icon.dart';
import '../../widgets/Buttons/scale_button.dart';
import '../../widgets/Buttons/text_button.dart';

class Custom_Drawer extends StatelessWidget {
  const Custom_Drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width / 1.3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey,
          // appBar: AppBar(
          //   backgroundColor: Colors.grey,
          // ),
          body: SidebarDrawer(
            drawer: const Scaffold(),
            body: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  Custom_Scale_Button(
                    Colors.transparent,
                    Colors.black,
                    .17.dg.sfdg,
                    const Icon(Icons.arrow_back_rounded),
                    () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(height: 30),
                  ScaleButton(
                    reverse: false,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Button_Icon(
                        h: .55.dg.sfdg,
                        w: 1.dg.sfdg,
                        text: 'التسجيل | الدخول',
                        size_Text: .17.dg.sfdg,
                        color_border: Colors.blue,
                        color_Text: Colors.white,
                        color_icon: Colors.white,
                        background: Colors.blue,
                        icon: Icons.arrow_circle_left_outlined,
                        W_SizedBox: 0,
                        color_overlayColor: Colors.grey,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),
                  Text_Button(
                    text: 'الرئيسية',
                    size: 0.19.dg.sfdg,
                    text_Color: Colors.black,
                    icon: Icons.home,
                    onPressed: () {},
                  ),
                  Text_Button(
                    text: 'الأجهزة وملحقاتها',
                    size: 0.19.dg.sfdg,
                    text_Color: Colors.black,
                    icon: Icons.home,
                    onPressed: () {},
                  ),
                  Text_Button(
                    text: 'تجهيز الكاشير',
                    size: 0.19.dg.sfdg,
                    text_Color: Colors.black,
                    icon: Icons.home,
                    onPressed: () {},
                  ),
                  Text_Button(
                    text: 'برامج حسب الطلب',
                    size: 0.19.dg.sfdg,
                    text_Color: Colors.black,
                    icon: Icons.home,
                    onPressed: () {},
                  ),
                  Text_Button(
                    text: 'شركتنا في نجاح',
                    size: 0.19.dg.sfdg,
                    text_Color: Colors.black,
                    icon: Icons.home,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
