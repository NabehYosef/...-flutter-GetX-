import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_app/main.dart';

class AdminMiddleWare
    extends StatelessWidget {
  const AdminMiddleWare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(
                10,
              ),
              child: InkWell(
                onTap: () {
                  sharedPref?.clear();
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
