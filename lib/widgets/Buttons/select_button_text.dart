// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';

import '../texts/custom_text.dart';

Widget Select_Button_text(w, flag, text, phone, onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: flag ? Colors.blue : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ).copyWith(
      overlayColor: const MaterialStatePropertyAll(Colors.blue),
      side: const MaterialStatePropertyAll(
        BorderSide(color: Colors.blue, width: 1.3),
      ),
    ),
    child: SizedBox(
      height: 1.5.dg.sfdg,
      width: w ?? 3.5.dg.sfdg,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Custom_Text(
                text: text,
                size: .28.dg.sfdg,
                color: flag ? Colors.white : Colors.black),
            const SizedBox(height: 8),
            Custom_Text(
              text: phone,
              size: .21.dg.sfdg,
              color: flag ? Colors.white : Colors.grey,
            ),
          ],
        ),
      ),
    ),
  );
}
