import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ExDialog extends StatelessWidget {
  const ExDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Dialog"),
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
                Get.defaultDialog(
                  title: "Title Dialog",
                  content: Text(
                    "Content Dialog take Widget",
                  ),
                  //titleStyle: ,
                  textCancel: "Cancel",
                  textConfirm:
                      "Confirm",
                  onConfirm: () {
                    // ignore: avoid_print
                    print("Confirm");
                  },
                  onCancel: () {
                    // ignore: avoid_print
                    print("OnCancle");
                  },
                  actions: [
                    MaterialButton(
                      onPressed: () {},
                      child: Text("ok"),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "cancel",
                      ),
                    ),
                  ],
                );
              },
              child: Text("ShowDialog"),
            ),
          ],
        ),
      ),
    );
  }
}
