import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CounterController extends GetxController {
  var counter = 0.obs;
  var isDark = false.obs;

  void changeTheme() => isDark.value = !isDark.value;
  void increment() => counter + 1;
  void decrement() => counter - 1;
}
