import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_app/Logic/Controller/homecontroller.dart';

// ignore: must_be_immutable
class Dependencyinjection
    extends StatelessWidget {
  HomeController controller =
      //injection this page with pageTwo (We dont need init:Page any More) with injection
      Get.put(
        HomeController(),
        permanent: true,
      );

  Dependencyinjection({
    super.key,
  }); //Injection

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("HomeTow"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              "DependencyInjection Controller",
              style: TextStyle(
                fontWeight:
                    FontWeight.bold,
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                controller.increment();
              },
            ),
            GetBuilder<HomeController>(
              builder: (controller) {
                return Text(
                  "${controller.counter}",
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                controller.decrement();
              },
            ),
          ],
        ),
      ),
    );
  }
}
