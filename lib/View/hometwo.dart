import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx_app/Controller/homecontroller.dart';

class HomeTwo extends StatelessWidget {
  const HomeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("HomeTow"),
      ),
      body: GetBuilder<HomeGetBuilderController>(
        init:
            HomeGetBuilderController(),
        builder: (controller) {
          return Center(
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment
                      .center,
              children: [
                Text(
                  "GetBuilder Controller",
                  style: TextStyle(
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    controller
                        .increment();
                  },
                ),
                Text(
                  "${controller.counter}",
                ),
                IconButton(
                  icon: Icon(
                    Icons.remove,
                  ),
                  onPressed: () {
                    controller
                        .decrement();
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
