import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class ExSnackBar
    extends StatelessWidget {
  const ExSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("SnackBar"),
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
                Get.snackbar(
                  "Required Title",
                  "Required Message",
                  colorText:
                      Colors.white,
                  backgroundColor:
                      Colors.orange,
                  duration: Duration(
                    seconds: 3,
                  ),
                  snackPosition:
                      SnackPosition.TOP,
                  borderColor:
                      Colors.white,
                  borderWidth: 0,
                  boxShadows: [
                    BoxShadow(
                      color:
                          Colors.green,
                    ),
                  ],
                );
              },
              child: Text(
                "Show SnackBar",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
