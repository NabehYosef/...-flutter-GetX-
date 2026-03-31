import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeGetBuilderController
    extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}

class HomeGetXController
    extends GetxController {
  RxInt counter = 0.obs; //stream : obs

  void increment() {
    counter++;
  }

  void decrement() {
    counter--;
  }
}
