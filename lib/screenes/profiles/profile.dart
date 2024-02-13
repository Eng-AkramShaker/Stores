// Profile =======================================================

// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, unused_local_variable, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import 'package:scale_button/scale_button.dart';
import 'package:stores/constes/navigators.dart';
import '../../widgets/Buttons/container_icon.dart';
import 'Returns/Returns.dart';
import 'address/address.dart';
import 'edit/edit.dart';
import 'favorite/favorite.dart';
import 'order/my_order.dart';

class MyProfile extends StatefulWidget {
  @override
  State<MyProfile> createState() => MyProfileState();
}

class MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(.06.dg.sfdg),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30),

                Button_Icon(
                  h: .55.dg.sfdg,
                  w: double.infinity,
                  text: 'مرحبا بك أحمد علي',
                  size_Text: .21.dg.sfdg,
                  color_border: Colors.blue,
                  color_Text: Colors.white,
                  color_icon: Colors.blue,
                  background: Colors.blue,
                ),

                // ==============================================================

                SizedBox(height: .1.dg.sfdg),
                Button_Icon(
                  h: .55.dg.sfdg,
                  w: double.infinity,
                  text: 'حسابي',
                  size_Text: .21.dg.sfdg,
                  icon: Icons.person,
                  size_icon: .32.dg.sfdg,
                  color_border: Colors.blue,
                  color_Text: Colors.blue,
                  color_icon: Colors.blue,
                ),
                SizedBox(height: .1.dg.sfdg),
                ScaleButton(
                  reverse: false,
                  child: Button_Icon(
                    h: .55.dg.sfdg,
                    w: double.infinity,
                    text: 'تعديل الحساب',
                    size_Text: .21.dg.sfdg,
                    icon: Icons.person,
                    size_icon: .32.dg.sfdg,
                    color_border: Colors.black,
                    color_Text: Colors.black,
                    color_icon: Colors.black,
                    onPressed: () {
                      pushNewScreen(context, Edit_Screen());
                    },
                  ),
                ),
                SizedBox(height: .1.dg.sfdg),
                ScaleButton(
                  reverse: false,
                  child: Button_Icon(
                    h: .55.dg.sfdg,
                    w: double.infinity,
                    text: 'العناوين',
                    size_Text: .21.dg.sfdg,
                    icon: Icons.person,
                    size_icon: .32.dg.sfdg,
                    color_border: Colors.black,
                    color_Text: Colors.black,
                    color_icon: Colors.black,
                    onPressed: () {
                      pushNewScreen(context, Address_Screen());
                    },
                  ),
                ),
                SizedBox(height: .1.dg.sfdg),
                ScaleButton(
                  reverse: false,
                  child: Button_Icon(
                    h: .55.dg.sfdg,
                    w: double.infinity,
                    text: 'المفضلة',
                    size_Text: .21.dg.sfdg,
                    icon: Icons.person,
                    size_icon: .32.dg.sfdg,
                    color_border: Colors.black,
                    color_Text: Colors.black,
                    color_icon: Colors.black,
                    onPressed: () {
                      pushNewScreen(context, Favorite_Screen());
                    },
                  ),
                ),
                SizedBox(height: .1.dg.sfdg),
                Button_Icon(
                  h: .55.dg.sfdg,
                  w: double.infinity,
                  text: 'طلباتي',
                  size_Text: .21.dg.sfdg,
                  icon: Icons.person,
                  size_icon: .32.dg.sfdg,
                  color_border: Colors.blue,
                  color_Text: Colors.blue,
                  color_icon: Colors.blue,
                ),
                SizedBox(height: .1.dg.sfdg),
                ScaleButton(
                  reverse: false,
                  child: Button_Icon(
                    h: .55.dg.sfdg,
                    w: double.infinity,
                    text: 'طلباتي',
                    size_Text: .21.dg.sfdg,
                    icon: Icons.person,
                    size_icon: .32.dg.sfdg,
                    color_border: Colors.black,
                    color_Text: Colors.black,
                    color_icon: Colors.black,
                    onPressed: () {
                      pushNewScreen(context, My_Order_Screen());
                    },
                  ),
                ),
                SizedBox(height: .1.dg.sfdg),
                ScaleButton(
                  reverse: false,
                  child: Button_Icon(
                    h: .55.dg.sfdg,
                    w: double.infinity,
                    text: 'مرتجعات',
                    size_Text: .21.dg.sfdg,
                    icon: Icons.person,
                    size_icon: .32.dg.sfdg,
                    color_border: Colors.black,
                    color_Text: Colors.black,
                    color_icon: Colors.black,
                    onPressed: () {
                      pushNewScreen(context, Returns_Screen());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
