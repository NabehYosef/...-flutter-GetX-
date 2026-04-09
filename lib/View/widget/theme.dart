import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class ExTheme extends StatelessWidget {
  const ExTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Card(
              child: Text(
                "Hello World",
              ),
            ),
            MaterialButton(
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeTheme(
                    ThemeData.light(),
                  );
                } else {
                  Get.changeTheme(
                    ThemeData.dark(),
                  );
                }
              },
              child: Text("ChangTheme"),
            ),
          ],
        ),
      ),
    );
  }
}
