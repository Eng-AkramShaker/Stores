// ignore_for_file: non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_types_as_parameter_names, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:app_bar_with_search_switch/app_bar_with_search_switch.dart';
import 'package:flutter/material.dart';
import '../cards/card_2.dart';

Custom_AppBar(context, TextEditingController controller, String searchText) {
  final searchText = ValueNotifier<String>('');

  return AppBarWithSearchSwitch(
    onChanged: (text) {
      searchText.value = text;
    },
    animation: AppBarAnimationSlideLeft.call,
    appBarBuilder: (context) {
      return AppBar(
        iconTheme: IconThemeData(
          size: 26.5,
        ),
        // toolbarHeight: 80,
        backgroundColor: Colors.grey[200],

        actions: [
          SizedBox(width: 80),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.network(
                'https://s.manarat-alasr.com/stores_logo_images/4z88vFgICEB18jNESvIbUcabxkrspcXzOruxBcGY.png',
                width: 120,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              AppBarSearchButton(),
              InkWell(
                onTap: () {
                  //
                  // Get.back();
                },
                child: custom_Card_2(
                    h: 120, w: 25, icon: Icons.favorite, size_icon: 27),
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      );
    },
  );
}
