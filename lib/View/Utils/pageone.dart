import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx_app/Logic/Controller/lifecyclecontroller.dart';

// ignore: must_be_immutable
class PageOneLifeCycle
    extends StatelessWidget {
  PageOneLifeCycle({super.key});
  Lifecyclecontroller controller =
      Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page One"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              "Life Cycle Controller Page One",
              style: TextStyle(
                fontWeight:
                    FontWeight.bold,
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                controller.Increment();
              },
            ),
            GetBuilder<
              Lifecyclecontroller
            >(
              init:
                  Lifecyclecontroller(),
              builder: (controller) {
                return Text(
                  "${controller.counter}",
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                controller.Decrement();
              },
            ),
          ],
        ),
      ),
    );
  }
}
