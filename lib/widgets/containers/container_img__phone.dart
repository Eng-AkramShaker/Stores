// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';

import '../images/img_network.dart';
import '../texts/custom_text.dart';

Container container_img__phone() {
  return Container(
    height: 150,
    width: 380,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(width: 1.8, color: Colors.blue),
    ),
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
          size: .28.dg.sfdg,
          color: Colors.black,
        ),
      ],
    ),
  );
}
