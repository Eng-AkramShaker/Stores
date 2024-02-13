// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import 'package:scale_button/scale_button.dart';
import 'package:stores/widgets/images/img_network_fill.dart';
import '../cards/card_2.dart';
import '../texts/custom_text.dart';

Container Custom_Large_Listview(context, String img, String title, String price,
    int itemCount, bool Show_Container, bool Show_Cart) {
  Size size = MediaQuery.of(context).size;

  return Container(
    height: 3.9.dg.sfdg,
    width: double.infinity,
    child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 2.3.dg.sfdg,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Custom_img_Network_fill(
                            img, 2.3.dg.sfdg, double.infinity),
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
                          Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: Custom_Text(
                                text: title,
                                size: .17.dg.sfdg,
                                color: Colors.grey),
                          ),
                          SizedBox(height: .2.dg.h),
                          Padding(
                            padding: const EdgeInsets.only(right: 6, bottom: 8),
                            child: Custom_Text(
                                text: price,
                                size: .13.dg.sfdg,
                                color: Colors.black),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Show_Cart
                                  ? ScaleButton(
                                      reverse: false,
                                      child: custom_Card_2(
                                          h: .5.dg.h,
                                          w: .3.dg.w,
                                          icon: Icons.shopping_cart,
                                          size_icon: .28.dg.sfdg,
                                          color: Colors.grey),
                                    )
                                  : ScaleButton(
                                      reverse: false,
                                      child: Container(
                                        height: .31.dg.sfdg,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Custom_Text(
                                              text: 'نفذت الكمية',
                                              size: .11.dg.sfdg,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                              ScaleButton(
                                reverse: false,
                                child: custom_Card_2(
                                    h: .5.dg.h,
                                    w: .3.dg.w,
                                    icon: Icons.favorite_border,
                                    size_icon: .3.dg.sfdg,
                                    color: Colors.blue),
                              )
                            ],
                          )
                        ]),
                  ],
                ),
              ),
            ],
          );
        }),
  );
}
