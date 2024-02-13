import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';

import '../texts/custom_text.dart';

Container container_title_phone() {
  return Container(
    height: 120,
    // width: 280,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 1.8, color: Colors.blue),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Custom_Text(text: 'محمد احمد', size: .28.dg.sfdg),
        const SizedBox(height: 8),
        Custom_Text(
          text: '05545262625',
          size: .21.dg.sfdg,
          color: Colors.grey,
        ),
      ],
    ),
  );
}
