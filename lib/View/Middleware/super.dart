import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_app/main.dart';

class Super extends StatelessWidget {
  const Super({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Super"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Super"),
            ),
          ],
        ),
      ),
    );
  }
}
