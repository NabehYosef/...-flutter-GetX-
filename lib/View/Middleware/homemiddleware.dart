import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_app/main.dart';

class HomeMiddleWare
    extends StatelessWidget {
  const HomeMiddleWare({super.key});

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
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(
                10,
              ),
              child: InkWell(
                onTap: () {
                  sharedPref!.clear();
                  Get.offNamed(
                    "/Loginmiddleware",
                  );
                },
                child: Text(
                  "SignOut",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
