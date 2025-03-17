import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;

  // Memperbaiki increment dan decrement
  void increment() => count.value++; // Menambahkan nilai counter
  void decrement() => count.value--; // Mengurangi nilai counter
}
