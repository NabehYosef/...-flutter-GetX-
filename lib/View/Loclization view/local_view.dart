import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/Localization/local_controller.dart';

class HomeLocal
    extends StatelessWidget {
  const HomeLocal({super.key});

  @override
  Widget build(BuildContext context) {
    MyLocalController
    controllerlanguage = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("1".tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  controllerlanguage
                      .changelanguage(
                        "ar",
                      );
                },
                child: Text("2".tr),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  controllerlanguage
                      .changelanguage(
                        "en",
                      );
                },
                child: Text("3".tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
