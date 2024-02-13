// Main Screen =====================================================

// ignore_for_file: camel_case_types, unused_local_variable, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_units/responsive_units.dart';
import 'package:stores/widgets/texts/custom_text.dart';
import '../../controller/home_controller/home_controller.dart';
import '../../widgets/cards/card_img.dart';
import '../../widgets/listview/large_listview.dart';
import '../../widgets/listview/small_listview.dart';
import '../../widgets/slider/custom_slider.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => Main_ScreenState();
}

class Main_ScreenState extends State<Main_Screen> {
  String? selectedValue;

  //

  @override
  void initState() {
    super.initState();
    ints(context);
  }

  ints(context) {
    final crlHome = Provider.of<Controller_Home>(context, listen: false);

    Future.delayed(const Duration(seconds: 0), () async {});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    String searchText = '';
    final TextEditingController controller = TextEditingController(text: '');

    final crlHome = Provider.of<Controller_Home>(context, listen: false);

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Custom_Slider(),
            small_listview(
              img:
                  'https://s.manarat-alasr.com/images/1/BPsOBCKP2qWuNFNAkk6zneGZp78LiTLt2VFIRxLD.png',
              size: 1.1.dg.sp,
              title: 'الاجهزة وملحقاتها',
            ),

            //

            // 'الأكثر مبيعا' =================================================================

            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Custom_Text(text: 'الأكثر مبيعا', size: 1.4.dg.sp),
                  ]),
            ),
            Custom_Large_Listview(
              context,
              'https://s.manarat-alasr.com/products-image/2/1640625409%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D8%AC%20%D8%A5%D8%AF%D8%A7%D8%B1%D8%A9%20%D8%A7%D9%84%D9%85%D8%A8%D9%8A%D8%B9%D8%A7%D8%AA.jpg.jpg',
              'برنامج إدارة المبيعات',
              '1500 ريال',
              15,
              true,
              false,
            ),

            // Row  ==========================================================================
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Custom_Container_img(context, 'assets/images/del.png'),
                Custom_Container_img(context, 'assets/images/pre.png'),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Custom_Container_img(context, 'assets/images/sup.png'),
                Custom_Container_img(context, 'assets/images/mai.png'),
              ],
            ),
            small_listview(
              img:
                  'https://s.manarat-alasr.com/images/1/BPsOBCKP2qWuNFNAkk6zneGZp78LiTLt2VFIRxLD.png',
              size: 1.1.dg.sp,
              title: 'الاجهزة وملحقاتها',
            ),

            // الاخبار =================================================================

            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Custom_Text(text: 'الأخبار', size: 1.4.dg.sp),
                  ]),
            ),
            Custom_Large_Listview(
              context,
              'https://s.manarat-alasr.com/products-image/2/1640625409%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D8%AC%20%D8%A5%D8%AF%D8%A7%D8%B1%D8%A9%20%D8%A7%D9%84%D9%85%D8%A8%D9%8A%D8%B9%D8%A7%D8%AA.jpg.jpg',
              'برنامج إدارة المبيعات',
              '1500 ريال',
              15,
              true,
              true,
            ),

            // الإكسسوارات =================================================================

            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Custom_Text(text: 'الإكسسوارات', size: 14),
                  ]),
            ),
            Custom_Large_Listview(
              context,
              'https://s.manarat-alasr.com/products-image/2/1640625409%D8%A8%D8%B1%D9%86%D8%A7%D9%85%D8%AC%20%D8%A5%D8%AF%D8%A7%D8%B1%D8%A9%20%D8%A7%D9%84%D9%85%D8%A8%D9%8A%D8%B9%D8%A7%D8%AA.jpg.jpg',
              'برنامج إدارة المبيعات',
              '1500 ريال',
              15,
              true,
              true,
            ),

            small_listview(
              img:
                  'https://s.manarat-alasr.com/images/1/BPsOBCKP2qWuNFNAkk6zneGZp78LiTLt2VFIRxLD.png',
              size: 1.1.dg.sp,
              title: 'الاجهزة وملحقاتها',
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    ));
  }
}

//
