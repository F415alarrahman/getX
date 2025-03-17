import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/counter_controller.dart';
import 'package:getx/views/sceen2.dart';

class HomePage extends StatelessWidget {
  final c = Get.find<CounterController>();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter App With GetX',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: c.isDark.value ? Colors.white : Colors.black54,
          ),
        ),
      ),
      body: Center(
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Counter : ${c.counter}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: c.isDark.value ? Colors.white : Colors.black54,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.snackbar(
                        "Berhasil",
                        "Snackbar Berhasil Muncul",
                        snackPosition: SnackPosition.TOP,
                        backgroundColor: Colors.green,
                        colorText: Colors.white,
                        duration: Duration(seconds: 3),
                        margin: EdgeInsets.all(10),
                        snackStyle: SnackStyle.GROUNDED,
                      );
                    },
                    child: Text("Tampilkan SnackBar"),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Menampilkan dialog menggunakan Get.dialog
                      Get.dialog(
                        AlertDialog(
                          title: Text('Dialog With GetX'),
                          content: Text('Dialog Berhasil Muncul'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Get.back(); // Menutup dialog
                              },
                              child: Text('Tutup'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text("Tampilkan Dialog"),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.bottomSheet(
                        Container(
                          color: Colors.white,
                          height: 250,
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Bottom Sheet",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20),
                              Text("Bottom Sheet Berhasil Muncul"),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Get.back(); // Menutup bottom sheet
                                },
                                child: Text("Tutup Bottom Sheet"),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: Text("Tampilkan Bottom Sheet"),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/second');
                    },
                    child: Text("Tampilkan Screen 2"),
                  ),
                ),
              ],
            ),
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
        ],
      ),
    );
  }
}
