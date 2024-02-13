// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:material_text_fields/material_text_fields.dart';
import 'package:material_text_fields/theme/material_text_field_theme.dart';

Widget Custom_TextField(hint, icon, color_icon, controller) {
  return Container(
    height: 50,
    width: double.maxFinite,
    margin: const EdgeInsets.only(top: 6),
    child: MaterialTextField(
      keyboardType: TextInputType.text,
      hint: '$hint',
      labelText: '$hint',
      theme: FilledOrOutlinedTextTheme(
        radius: 8,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        errorStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        fillColor: Colors.transparent,
        prefixIconColor: Colors.blue,
        enabledColor: Colors.grey,
        focusedColor: Colors.blue,
        floatingLabelStyle: const TextStyle(color: Colors.blue),
        width: 1.5,
        labelStyle: const TextStyle(fontSize: 16, color: Colors.black),
      ),
      textInputAction: TextInputAction.next,
      suffixIcon: Icon(
        icon,
        color: color_icon ?? Colors.red,
        size: 10,
      ),
      controller: controller,
      validator: (v) {
        return null;
      },
    ),
  );
}
