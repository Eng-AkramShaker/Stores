// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';

Text Custom_Text({required text, required double size, color, fontweight}) {
  return Text(
    text ?? '',
    style: TextStyle(
      color: color ?? Colors.black,
      fontSize: size ?? 19.dg.sp,
      fontWeight: fontweight ?? FontWeight.bold,
      fontFamily: 'Lemonada',
    ),
  );
}
