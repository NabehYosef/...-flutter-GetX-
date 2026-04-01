import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_app/Controller/homecontroller.dart';

class Dependencyinjection
    extends StatelessWidget {
  HomeGetBuilderController controller =
      //injection this page with pageTwo (We dont need init:Page any More) with injection
      Get.put(
        HomeGetBuilderController(),
        permanent: true,
      ); //Injection

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
            GetBuilder<
              HomeGetBuilderController
            >(
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
