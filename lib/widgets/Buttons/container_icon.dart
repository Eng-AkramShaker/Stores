// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';

Widget Button_Icon({
  required double h,
  required double w,
  Color? color_Text,
  double? size_Text,
  String? text,
  double? size_icon,
  Color? color_border,
  Color? background,
  Color? color_icon,
  Color? color_overlayColor,
  IconData? icon,
  double? circular,
  double? W_SizedBox,
  Function()? onPressed,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(circular ?? 10),
      ),
    ).copyWith(
      overlayColor: MaterialStatePropertyAll(color_overlayColor ?? Colors.blue),
      side: MaterialStatePropertyAll(
        BorderSide(color: color_border ?? Colors.blue, width: 1.3),
      ),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        return background ?? Colors.white;
      }),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon != null
              ? Icon(
                  icon,
                  color: color_icon ?? Colors.cyan,
                  size: size_icon ?? .32.dg.sfdg,
                )
              : Container(),
          text != null
              ? Text(
                  text ?? "",
                  style: TextStyle(
                    color: color_Text ?? Colors.black,
                    fontSize: size_Text ?? .18.dg.sfdg,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lemonada',
                  ),
                  textAlign: TextAlign.center,
                )
              : const SizedBox(),
          SizedBox(width: W_SizedBox ?? 20)
        ],
      ),
    ),
  );
}
