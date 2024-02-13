// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_print, unused_element

import 'package:flutter/material.dart';

class Controller_Home extends ChangeNotifier {
  int counter = 0;

  List data_City_json = [];
  List data_Items_json = [];

  //
  void addCounter() {
    counter++;
    notifyListeners();
  }
  // ===================================================================

  //------------------------------------------------------------------
}
