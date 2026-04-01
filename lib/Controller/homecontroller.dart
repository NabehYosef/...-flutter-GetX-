import 'package:get/get.dart';

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
    //GetX Work Without update()
    counter++;
  }

  void decrement() {
    counter--;
  }
}
