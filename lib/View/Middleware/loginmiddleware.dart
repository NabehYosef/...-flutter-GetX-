import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_app/main.dart';

class Loginmiddleware
    extends StatelessWidget {
  const Loginmiddleware({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
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
                  sharedPref!.setString(
                    "role",
                    "user",
                  );
                  Get.offNamed(
                    "/HomeMiddleWare",
                  );
                },
                child: Text(
                  "Login User",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(
                10,
              ),
              child: InkWell(
                onTap: () {
                  sharedPref?.setString(
                    "role",
                    "admin",
                  );
                  Get.offNamed(
                    "/AdminMiddleWare",
                  );
                },
                child: Text(
                  "Login Admin",
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
