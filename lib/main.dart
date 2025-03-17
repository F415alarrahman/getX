import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/bindings/home_binding.dart';
import 'package:getx/views/home_screen.dart';
import 'package:getx/views/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage(), binding: HomeBinding()),
        GetPage(name: '/second', page: () => Sceen2())
      ],
    );
  }
}
