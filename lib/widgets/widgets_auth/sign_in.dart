// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '../containers/container.dart';
import '../textfield/TextField_1.dart';

Padding SignIN_Screen() {
  final controller_1 = TextEditingController();
  final controller_2 = TextEditingController();
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Custom_TextField('Email', Icons.email, Colors.white, controller_1),
        // =================================================

        Custom_TextField(
            'Password', Icons.password, Colors.white, controller_2),

        // =================================================
        const SizedBox(height: 50),

        Custom_Button(
          h: 50,
          w: 300,
          text: 'دخول',
          color_Text: Colors.white,
          color_Button: Colors.blue,
        ),
        //
      ],
    ),
  );
}
