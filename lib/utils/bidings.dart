import 'package:get/get.dart';

import 'package:getx_app/Logic/Controller/lifecyclecontroller.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    //Get.put(HomeController());
    Get.put(Lifecyclecontroller());

    // Get.lazyPut<Lifecyclecontroller>(
    //   () => Lifecyclecontroller(),
    // );
  }
}
