import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/controllers/counter_controller.dart';
import 'package:getx/views/home_screen.dart';

void main() {
  Get.put(CounterController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final counterC = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ));
  }
}
