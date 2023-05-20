import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt number = 0.obs;

  void increment1() {
    number++;
  }

  void decrement1() {
    number--;
  }
}
