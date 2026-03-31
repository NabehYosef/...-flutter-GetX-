import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:getx_app/View/homefour.dart';
import 'package:getx_app/View/homethree.dart';
import 'package:getx_app/View/hometwo.dart';

class HomeOne extends StatelessWidget {
  const HomeOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("HomeOne"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Get.to(HomeTwo());
              },
              child: Text(
                "Go to Home Two",
              ),
            ),
            SizedBox(height: 10),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Get.to(HomeThree());
              },
              child: Text(
                "Go to Home Three",
              ),
            ),
            SizedBox(height: 10),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Get.to(HomeFour());
              },
              child: Text(
                "Go to Home Four",
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
