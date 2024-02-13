// ignore_for_file: unused_local_variable, camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_units/responsive_units.dart';
import '../../controller/home_controller/home_controller.dart';
import '../../widgets/listview/small_listview.dart';

class Software_Screen extends StatefulWidget {
  const Software_Screen({super.key});

  @override
  State<Software_Screen> createState() => _Software_ScreenState();
}

class _Software_ScreenState extends State<Software_Screen> {
  @override
  Widget build(BuildContext context) {
    final crlHome = Provider.of<Controller_Home>(context, listen: false);

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            small_listview(
              img:
                  'https://s.manarat-alasr.com/images/1/BPsOBCKP2qWuNFNAkk6zneGZp78LiTLt2VFIRxLD.png',
              size: 1.1.dg.sp,
              title: 'الاجهزة وملحقاتها',
            ),

            // 'الأكثر مبيعا' =================================================================
            const SizedBox(height: 50),
          ],
        ),
      ),
    ));
  }
}
