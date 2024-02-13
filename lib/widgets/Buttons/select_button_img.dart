// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';

import '../images/img_network.dart';
import '../texts/custom_text.dart';

Widget Select_Button_Img(w, flag, text, phone, onPressed) {
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
      height: 1.8.dg.sfdg,
      width: w ?? 3.5.dg.sfdg,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Custom_img_Network(
                'https://store.manarat-alasr.com/website/images/cash-on-delivery.png',
                65,
                65),
            const SizedBox(height: 8),
            Custom_Text(
              text: 'الدفع عند الاستلام',
              size: .25.dg.sfdg,
              color: flag ? Colors.white : Colors.black,
            ),
          ],
        ),
      ),
    ),
  );
}
