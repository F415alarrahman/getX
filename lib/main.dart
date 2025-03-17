import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/bindings/home_binding.dart';
import 'package:getx/controllers/home_controller.dart';
import 'package:getx/views/home_screen.dart';
import 'package:getx/views/screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final counterC = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          theme: ThemeData.light(),
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          getPages: [
            GetPage(name: '/', page: () => HomePage(), binding: HomeBinding()),
            GetPage(name: '/second', page: () => Sceen2())
          ],
        ));
  }
}
