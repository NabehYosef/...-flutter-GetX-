import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class ExButtomSheet
    extends StatelessWidget {
  const ExButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("ExButtomSheet"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            MaterialButton(
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Text(
                      "ButtomSheet",
                    ),
                    color: Colors.white,
                    height: 200,
                  ),
                  enterBottomSheetDuration:
                      Duration(
                        seconds: 3,
                      ),
                  exitBottomSheetDuration:
                      Duration(
                        seconds: 1,
                      ),
                  elevation: 15,
                );
              },
              child: Text(
                "Show ButtomSheet",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
