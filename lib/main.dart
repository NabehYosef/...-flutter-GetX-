import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/Localization/local.dart';
import 'package:getx_app/Localization/local_controller.dart';
import 'package:getx_app/View/Middleware/admin.dart';
import 'package:getx_app/View/Middleware/homemiddleware.dart';
import 'package:getx_app/View/Middleware/loginmiddleware.dart';
import 'package:getx_app/Logic/middleware/auth_middleware.dart';
import 'package:getx_app/View/Loclization%20view/local_view.dart';
import 'package:getx_app/View/widget/Buttom_sheet.dart';
import 'package:getx_app/View/widget/Dialog.dart';
import 'package:getx_app/View/widget/SnackBar.dart';
import 'package:getx_app/View/widget/theme.dart';
import 'package:getx_app/utils/bidings.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;

Future<void> main() async {
  //* WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  //*await initialServices();
  sharedPref =
      await SharedPreferences.getInstance();

  runApp(const MyApp());
}

// Future initialServices() async {  //*
//   await Get.putAsync(
//     () => SettingServices().init(),
//   );
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //injection
    MyLocalController controller =
        Get.put(MyLocalController());
    //===========================
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      //===========================///*Translation *//===========================
      // locale: Get.deviceLocale,
      locale:
          controller.initialLanguage,
      translations: MyLocal(),
      //===========================///* *//===========================
      initialBinding: MyBinding(),
      //===========================// 1-Call Bidding
      initialRoute: "/them",

      getPages: [
        GetPage(
          name: "/them",
          page: () => ExTheme(),
        ),
        GetPage(
          name: "/SnackBar",
          page: () => ExSnackBar(),
        ),
        //===========================
        GetPage(
          name: "/Dialog",
          page: () => ExDialog(),
        ),
        //===========================
        GetPage(
          name: "/HomeLocal",
          page: () => HomeLocal(),
        ),
        //===========================
        GetPage(
          name: "/Loginmiddleware",
          page: () => Loginmiddleware(),
          middlewares: [
            AuthMiddleWare(),
            // Supermiddleware(),
          ],
        ),
        //===========================
        GetPage(
          name: "/HomeMiddleWare",
          page: () => HomeMiddleWare(),
        ),
        //===========================
        GetPage(
          name: "/AdminMiddleWare",
          page: () => AdminMiddleWare(),
        ),
        //===========================
        // GetPage(
        //   name: "/Super",
        //   page: () => Super(),
        // ),
      ],
    );
  }
}

//Ex Class Theme
class Themes {
  static ThemeData customDarkTheme =
      ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
      );
  static ThemeData customLightTheme =
      ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
      );
}
