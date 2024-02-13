// // ignore_for_file: depend_on_referenced_packages, unused_import, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:responsive_units/responsive_units.dart';
import 'package:stores/screenes/home/home.dart';
import 'controller/home_controller/home_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(providers: providers, child: const MyApp()));
}

final List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (ctx) => Controller_Home()),
];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Controller_Home(),
      child: MaterialApp(
        builder: (context, child) => AppSizer(
          child: child,
        ),
        debugShowCheckedModeBanner: false,
        theme: Theme.of(context).copyWith(
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(color: Colors.black),
          ),
        ),
        home: const Scaffold(
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Home(),
          ),
          //
        ),
      ),
    );
  }
}
