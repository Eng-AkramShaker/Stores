import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';

import '../texts/custom_text.dart';

Padding custom_Row(textLeft, textRight) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(right: .15.dg.sfdg),
          child: Custom_Text(text: '$textRight', size: 1.3.dg.sp),
        ),
        Padding(
          padding: EdgeInsets.only(left: .2.dg.sfdg),
          child: Custom_Text(text: '$textLeft', size: 1.3.dg.sp),
        ),
      ],
    ),
  );
}
