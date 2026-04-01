import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:getx_app/Controller/homefourcontroller.dart';

class HomeThree
    extends StatelessWidget {
  const HomeThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("HomeFour"),
      ),
      body: ListView(
        children: [
          Center(
            child: GetX<Homefourcontroller>(
              init:
                  Homefourcontroller(),
              builder: (controller) {
                return Column(
                  children: [
                    GetX<
                      Homefourcontroller
                    >(
                      builder: (controller) {
                        print(
                          "Counter One1 Rebuild",
                        );
                        return Text(
                          "${controller.counter1.value}",
                          style: TextStyle(
                            fontSize:
                                20,
                            fontWeight:
                                FontWeight
                                    .bold,
                          ),
                        );
                      },
                    ),
                    GetX<
                      Homefourcontroller
                    >(
                      builder: (controller) {
                        print(
                          "Counter Two2 Rebuild",
                        );
                        return Text(
                          "${controller.counter2.value}",
                          style: TextStyle(
                            fontSize:
                                20,
                            fontWeight:
                                FontWeight
                                    .bold,
                          ),
                        );
                      },
                    ),
                    GetX<
                      Homefourcontroller
                    >(
                      builder: (controller) {
                        print(
                          "Counter Sum Rebuild",
                        );
                        return Text(
                          "${controller.sum}",
                          style: TextStyle(
                            fontSize:
                                20,
                            fontWeight:
                                FontWeight
                                    .bold,
                          ),
                        );
                      },
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
