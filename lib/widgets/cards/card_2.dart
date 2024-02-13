// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget custom_Card_2(
    {required double h,
    required double w,
    double? r,
    double? l,
    double? t,
    double? b,
    double? size_icon,
    var icon,
    color}) {
  return Padding(
      padding: EdgeInsets.only(
          right: r ?? 0, left: l ?? 0, top: t ?? 0, bottom: b ?? 0),
      child: SizedBox(
        width: w,
        height: h,
        // decoration: BoxDecoration(
        //     // shape: BoxShape.circle,
        //     // color: Colors.black,
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.grey.withOpacity(0.4),
        //         spreadRadius: 5, //spread radius
        //         blurRadius: 8, // blur radius
        //         offset: const Offset(0, 0),
        //       ),
        //     ]),
        child: Icon(
          icon ?? Icons.arrow_back_ios_sharp,
          color: color ?? Colors.black,
          size: size_icon ?? 20,
        ),
      ));
}
