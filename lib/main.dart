import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_app/View/lifecyclepage.dart';
import 'package:getx_app/utils/mindbiding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding:
          MyBinding(), //1-Call Binding
      //initialRoute: "/HomeOne",
      // getPages: [
      //   GetPage(
      //     name: "/HomeOne",
      //     page: () => Homeexamples(),
      //     binding: MyBinding(), //2-Call Binding

      //   ),
      // ],
      home: LifeCyclePage(),
    );
  }
}
