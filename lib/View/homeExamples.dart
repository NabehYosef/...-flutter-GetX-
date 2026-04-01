import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:getx_app/Controller/homecontroller.dart';

// ignore: must_be_immutable
class Homeexamples
    extends StatelessWidget {
  // HomeGetXController controller =
  //     Get.put(HomeGetXController());

  final controller = Get.lazyPut(
    () => HomeGetBuilderController(),
  );
  Homeexamples({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("GetBuilderPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            //GetBuilder Controller
            GetBuilder<
              HomeGetBuilderController
            >(
              init:
                  HomeGetBuilderController(),
              builder: (controller) {
                return Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                  children: [
                    Text(
                      "GetBuilder Controller",
                      style: TextStyle(
                        fontWeight:
                            FontWeight
                                .bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                      ),
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
                );
              },
            ),
            //GetX Controller
            GetX<HomeGetXController>(
              init:
                  HomeGetXController(),
              builder: (controller) {
                return Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .center,
                  children: [
                    Text(
                      "GetX Controller",
                      style: TextStyle(
                        fontWeight:
                            FontWeight
                                .bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                      ),
                      onPressed: () {
                        controller
                            .increment();
                      },
                    ),
                    Text(
                      "${controller.counter.value}", //obx Int we need to add counter.value
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
                );
              },
            ),

            //OBX
            //HomeGetXController controller = Get.put(HomeGetXController());
            //in Obx we can have Mlti Controller
            Obx(() {
              return Row(
                mainAxisAlignment:
                    MainAxisAlignment
                        .center,
                children: [
                  Text(
                    "OBX Controller",
                    style: TextStyle(
                      fontWeight:
                          FontWeight
                              .bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.add,
                    ),
                    onPressed: () {
                      controller
                          .increment();
                    },
                  ),
                  Text(
                    "${controller.counter.value}", //obx Int we need to add counter.value
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
              );
            }),
          ],
        ),
      ),
    );
  }
}


//gitbuilder  update rebuild
//getX        Stream  (reactive)
//Obx         Stream  (reactive)