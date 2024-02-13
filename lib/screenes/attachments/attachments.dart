// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names, camel_case_types

import 'package:flexible_grid_view/flexible_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_units/responsive_units.dart';
import '../../widgets/appBar/custom_appBar.dart';
import '../../widgets/cards/card_1.dart';
import '../../widgets/drop_down/drop_down.dart';
import '../../widgets/listview/small_listview.dart';
import '../../widgets/slider/custom_slider.dart';

class Attachments_Screen extends StatefulWidget {
  const Attachments_Screen({super.key});

  @override
  _Attachments_ScreenState createState() => _Attachments_ScreenState();
}

class _Attachments_ScreenState extends State<Attachments_Screen> {
  final TextEditingController controller = TextEditingController(text: '');
  String searchText = '';

  int count = 10;
  bool Show_Cart = false;
  bool Show_Container = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: Custom_AppBar(context, controller, searchText),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Custom_Slider(),
              small_listview(
                img:
                    'https://s.manarat-alasr.com/images/1/BPsOBCKP2qWuNFNAkk6zneGZp78LiTLt2VFIRxLD.png',
                size: 1.1.dg.sp,
                show_title: false,
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Drop_Down(
                    selectedValue: 'الافتراضي',
                    genderItems: const ['الافتراضي', '2', '3'],
                    width: size.width,
                  ),
                ),
              ),
              SizedBox(
                height: count * 2.dg.sfdg,
                width: double.infinity,
                child: FlexibleGridView(
                  physics: const NeverScrollableScrollPhysics(),

                  // axisCount: GridLayoutEnum.threeElementsInRow,
                  // crossAxisSpacing: 8,
                  // mainAxisSpacing: 8,
                  children: List.generate(
                    count,
                    (index) => InkWell(
                      onTap: () {},
                      child: Center(
                        child: Custom_Card(
                          context,
                          'https://s.manarat-alasr.com/products-image/2/1642876746WD-Blue-SSD.jpg.jpg',
                          'SSD 1T WD',
                          '1500 ريال',
                          false,
                          false,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//

