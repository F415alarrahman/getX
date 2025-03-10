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
      appBar: AppBar(
        title: Text(
          'Counter Apps',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: c.isDark.value ? Colors.white : Colors.black54,
          ),
        ),
      ),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "ANGKA",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: c.isDark.value ? Colors.white : Colors.black54,
                ),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Center(
                    child: Text(
                  "${c.counter}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: c.isDark.value ? Colors.white : Colors.white,
                  ),
                )),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Berhasil", "Data Berhasil di Simpan",
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.greenAccent,
                        colorText: Colors.white);
                  },
                  child: Text("Tampilkan SnackBar"))
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => c.increment(),
            child: Text("+"),
          ),
          SizedBox(
            height: 4,
          ),
          FloatingActionButton(
            onPressed: () => c.decrement(),
            child: Text("-"),
          ),
          SizedBox(
            height: 4,
          ),
          FloatingActionButton(
            onPressed: () => c.changeTheme,
            child: Icon(
              c.isDark.value ? Icons.sunny : Icons.nightlight_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
