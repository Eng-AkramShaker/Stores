// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import '../texts/custom_text.dart';

Container Custom_Container_img(context, img) {
  Size size = MediaQuery.of(context).size;

  return Container(
    height: 1.6.dg.sfdg,
    width: 2.3.dg.sfdg,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: Colors.blue)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          img,
          height: .7.dg.sfdg,
          width: .7.dg.sfdg,
        ),
        Padding(
          padding: EdgeInsets.only(top: .14.dg.sfdg),
          child: Custom_Text(
            text: 'توصيل سريع',
            size: .14.dg.sfdg,
          ),
        ),
      ],
    ),
  );
}
