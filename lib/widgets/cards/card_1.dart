// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import '../images/img_network_fill.dart';
import '../texts/custom_text.dart';
import 'card_2.dart';

Widget Custom_Card(context, String img, String title, String price,
    bool Show_Container, bool Show_Cart) {
  return Container(
    height: 3.6.dg.sfdg,
    width: 3.dg.sfdg,
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: .8, color: Colors.grey)),
    child: Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Custom_img_Network_fill(img, 2.1.dg.sfdg, double.infinity),
              Show_Container
                  ? Container(
                      height: 25,
                      width: 40,
                      margin: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(5)),
                      child: Custom_Text(
                        text: 'مميز',
                        size: 10,
                        color: Colors.red,
                      ),
                    )
                  : Container(),
            ],
          ),
          // ==========================================================
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // const SizedBox(height: 8),
                Center(
                  child: Custom_Text(
                      text: title, size: .17.dg.sfdg, color: Colors.black),
                ),
                SizedBox(height: .04.dg.h),
                Padding(
                  padding: EdgeInsets.only(right: 6, bottom: 1.2.h),
                  child: Custom_Text(
                      text: price, size: .13.dg.sfdg, color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Show_Cart
                        ? custom_Card_2(
                            h: .1.dg.sfdg,
                            w: .2.dg.sfdg,
                            icon: Icons.shopping_cart,
                            size_icon: .28.dg.sfdg,
                            color: Colors.grey)
                        : Container(
                            height: .43.dg.sfdg,
                            width: .95.dg.sfdg,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Custom_Text(
                                  text: 'اضافة للعربة',
                                  size: .11.dg.sfdg,
                                  color: Colors.white),
                            ),
                          ),
                    custom_Card_2(
                        h: .3.dg.h,
                        w: .3.dg.w,
                        icon: Icons.favorite_border,
                        size_icon: .3.dg.sfdg,
                        color: Colors.blue)
                  ],
                )
              ]),
        ],
      ),
    ),
  );
}
