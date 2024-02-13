// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';

Widget Custom_Button({
  required double h,
  required double w,
  Color? color_Text,
  double? r,
  double? l,
  double? t,
  double? b,
  String? text,
  double? size_icon,
  Color? color_Button,
}) {
  return Center(
    child: Padding(
      padding: EdgeInsets.only(
          right: r ?? 0, left: l ?? 0, top: t ?? 0, bottom: b ?? 0),
      child: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          color: color_Button ?? Colors.cyan,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 5, //spread radius
              blurRadius: 8, // blur radius
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Center(
            child: Text(
              text ?? '',
              style: TextStyle(
                color: color_Text ?? Colors.black,
                fontSize: .13.dg.sfdg,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lemonada',
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
