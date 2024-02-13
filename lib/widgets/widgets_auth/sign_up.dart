// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import '../containers/container.dart';
import '../textfield/TextField_1.dart';

Padding Singup_Screen() {
  final controller_1 = TextEditingController();
  final controller_2 = TextEditingController();
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Custom_TextField('الاسم', Icons.email, Colors.white, controller_1),
        // =================================================

        Custom_TextField(
            'البريد الاكتروني', Icons.password, Colors.white, controller_2),
        // =================================================

        Custom_TextField('رقم الجوال', Icons.email, Colors.white, controller_1),
        // =================================================

        Custom_TextField(
            'كلمة المرور', Icons.password, Colors.white, controller_2),

        Custom_TextField(
            'تاكيد كلمه المرور', Icons.email, Colors.white, controller_1),
        // =================================================

        // =================================================
        const SizedBox(height: 50),

        Custom_Button(
          h: 50,
          w: 300,
          text: 'دخول',
          color_Text: Colors.white,
          color_Button: Colors.blue,
        ),
      ],
    ),
  );
}
