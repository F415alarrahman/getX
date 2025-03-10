import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx/controllers/counter_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final counterC = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
          theme: counterC.isDark.value ? ThemeData.dark() : ThemeData.light(),
          home: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  final c = Get.find<CounterController>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => Text(
              "ANGKA ${c.counter}",
            )),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () => c.changeTheme()),
    );
  }
}
