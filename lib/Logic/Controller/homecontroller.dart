import 'package:get/get.dart';

class HomeController
    extends GetxController {
  int counter = 0;

  void increment() {
    counter++;
    update(); //make refresh to any getcontroller
  }

  void decrement() {
    counter--;
    update(); //make refresh to any getcontroller
  }

  @override
  void onInit() {
    // ignore: avoid_print
    print("Init HomeController");
    super.onInit();
  }

  @override
  void onReady() {
    // ignore: avoid_print
    print("OnReady HomeController");
    super.onReady();
  }

  @override
  void onClose() {
    // ignore: avoid_print
    print("OnCloseController");
    super.onClose();
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

  @override
  void onInit() {
    // ignore: avoid_print
    print("Init HomeController");
    super.onInit();
  }

  @override
  void onReady() {
    // ignore: avoid_print
    print("OnReady HomeController");
    super.onReady();
  }

  @override
  void onClose() {
    // ignore: avoid_print
    print("OnCloseController");
    super.onClose();
  }
}
