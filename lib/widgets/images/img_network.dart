// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

ClipRRect Custom_img_Network(String img, double h, double w) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(5),
    child: Image.network(
      img,
      height: h ?? 100,
      width: w ?? 130,
      // fit: BoxFit.cover,
    ),
  );
}
