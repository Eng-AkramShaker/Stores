// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:responsive_units/responsive_units.dart';

class Custom_Slider extends StatelessWidget {
  List<CarouselItem> itemList = [
    CarouselItem(
      image: const NetworkImage(
        'https://miro.medium.com/max/1400/1*RpaR1pTpRa0PUdNdfv4njA.png',
      ),
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      // leftSubtitle: '11 Feb 2022',
      // rightSubtitle: 'v1.0.0',
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: const NetworkImage(
        'https://pbs.twimg.com/profile_banners/1444928438331224069/1633448972/600x200',
      ),
      titleTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
      // leftSubtitle: '11 Feb 2022',
      // rightSubtitle: 'v1.0.0',
      onImageTap: (i) {},
    ),
  ];

  Custom_Slider({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomCarouselSlider(
      items: itemList,
      height: 30.h,
      width: double.maxFinite,
      subHeight: 80.h,

      autoplay: true,
      // selectedDotColor: Colors.green,
      // unselectedDotColor: Colors.white,
    );
  }
}
