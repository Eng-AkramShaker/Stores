// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import 'package:scale_button/scale_button.dart';
import '../../constes/navigators.dart';
import '../../screenes/attachments/attachments.dart';
import '../images/img_network.dart';
import '../texts/custom_text.dart';

small_listview({
  title,
  required String img,
  required double size,
  bool? show_title = true,
}) {
  return Container(
    height: show_title == true ? 16.h : 13.3.h,
    width: double.infinity,
    // color: Colors.green,
    child: ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 15,
      itemBuilder: (BuildContext context, int index) {
        return ScaleButton(
          reverse: false,
          child: Padding(
            padding: EdgeInsets.only(left: 1.w),
            child: Row(
              children: [
                Container(
                  width: 21.w,
                  // color: Colors.blue,
                  child: InkWell(
                    onTap: () {
                      pushNewScreen(context, const Attachments_Screen());
                    },
                    child: Column(
                      children: [
                        Custom_img_Network(img, 11.h, 18.w),
                        show_title == true
                            ? Center(
                                child: Custom_Text(
                                    text: "$title", size: size ?? 5.dg.sp),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
