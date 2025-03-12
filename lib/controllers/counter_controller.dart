import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;
  var isDark = false.obs;
  // Memperbaiki increment dan decrement
  void increment() => counter.value++; // Menambahkan nilai counter
  void decrement() => counter.value--; // Mengurangi nilai counter
}
