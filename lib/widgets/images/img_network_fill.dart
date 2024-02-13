// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

ClipRRect Custom_img_Network_fill(String img, double h, double w) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(5),
    child: Image.network(
      img,
      height: h ?? 120,
      width: w ?? 130,
      fit: BoxFit.fill,
    ),
  );
}
