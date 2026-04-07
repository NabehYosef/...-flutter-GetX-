import 'package:get/state_manager.dart';

class Lifecyclecontroller
    extends GetxController {
  int counter = 0;

  // ignore: non_constant_identifier_names
  void Increment() {
    counter++;
    update();
  }

  // ignore: non_constant_identifier_names
  void Decrement() {
    counter--;
    update();
  }

  @override
  void onInit() {
    // ignore: avoid_print
    print("OnInit LifeCycleController");
    super.onInit();
  }

  @override
  void onReady() {
    // ignore: avoid_print
    print(
      "OnReady LifeCycleController",
    );
    super.onReady();
  }

  @override
  void onClose() {
    // ignore: avoid_print
    print(
      "OnClose LifeCycleController",
    );
    super.onClose();
  }
}
