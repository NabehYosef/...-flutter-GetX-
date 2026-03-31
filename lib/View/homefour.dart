import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx_app/Controller/homecontroller.dart';
import 'package:getx_app/Controller/homefourcontroller.dart';

class HomeFour extends StatelessWidget {
  const HomeFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("HomeFour"),
      ),
      body: GetBuilder<Homefourcontroller>(
        init: Homefourcontroller(),
        builder: (controller) {
          return Center(
            child: Column(
              children: [
                Text(
                  "${controller.counter1}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
                Text(
                  "${controller.counter2}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
                Text(
                  "${controller.sum}",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
                MaterialButton(
                  color: Colors.red,
                  child: Text(
                    "Add One",
                  ),
                  onPressed: () {
                    controller
                        .incrementOne();
                  },
                ),
                MaterialButton(
                  color: Colors.red,
                  child: Text(
                    "Add Two",
                  ),
                  onPressed: () {
                    controller
                        .incrementTwo();
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
