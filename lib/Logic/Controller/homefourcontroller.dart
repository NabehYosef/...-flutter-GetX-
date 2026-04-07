import 'package:get/get.dart';

class Homefourcontroller
    extends GetxController {
  final RxInt counter1 = 0.obs;
  final RxInt counter2 = 0.obs;

  void incrementOne() {
    counter1.value++;
    update();
  }

  void incrementTwo() {
    counter2.value++;
    update();
  }

  void decrementOne() {
    counter1.value--;
    update();
  }

  void decrementTwo() {
    counter2.value--;
    update();
  }

  int get sum =>
      counter1.value + counter2.value;
}
