import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/Logic/middleware/supermiddleware.dart';
import 'package:getx_app/View/Middleware/admin.dart';
import 'package:getx_app/View/Middleware/homemiddleware.dart';
import 'package:getx_app/View/Middleware/loginmiddleware.dart';
import 'package:getx_app/Logic/middleware/authmiddleware.dart';
import 'package:getx_app/View/Middleware/super.dart';
import 'package:getx_app/utils/bidings.dart';
import 'package:shared_preferences/shared_preferences.dart';

// متغير SharedPreferences عام
SharedPreferences? sharedPref;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // تهيئة SharedPreferences
  sharedPref =
      await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding:
          MyBinding(), // 1-Call Bidding
      initialRoute: "/Loginmiddleware",
      getPages: [
        GetPage(
          name: "/Loginmiddleware",
          page: () => Loginmiddleware(),
          middlewares: [
            AuthMiddleWare(),
            Supermiddleware(),
          ],
        ),
        GetPage(
          name: "/HomeMiddleWare",
          page: () => HomeMiddleWare(),
        ),
        GetPage(
          name: "/AdminMiddleWare",
          page: () => AdminMiddleWare(),
        ),
        GetPage(
          name: "/Super",
          page: () => Super(),
        ),
      ],
    );
  }
}
