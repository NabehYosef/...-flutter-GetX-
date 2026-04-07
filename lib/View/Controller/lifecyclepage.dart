import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:getx_app/View/Utils/pageone.dart';
import 'package:getx_app/View/Utils/pagetwo.dart';
import 'package:getx_app/utils/bidings.dart';

class LifeCyclePage
    extends StatelessWidget {
  const LifeCyclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LifeCycle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            MaterialButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text(
                "Go To LifeCyclePage 1",
              ),
              onPressed: () {
                Get.to(
                  () =>
                      PageOneLifeCycle(),
                  binding: MyBinding(),
                );
              },
            ),
            MaterialButton(
              textColor: Colors.white,
              color: Colors.red,
              child: Text(
                "Go To LifeCyclePage 2",
              ),
              onPressed: () {
                Get.to(
                  () =>
                      PageTwoLifeCycle,
                  binding: MyBinding(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
