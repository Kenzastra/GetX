import 'package:flutter/material.dart';
import 'package:layot/rift.dart';
import 'package:get/get.dart';
import 'main_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      title: 'Layout',
      debugShowCheckedModeBanner: false,
      home: MainMenu()
    );
  }
}






