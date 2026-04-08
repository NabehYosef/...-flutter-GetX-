import 'dart:ui';

import 'package:get/get.dart';
import 'package:getx_app/main.dart';

class MyLocalController
    extends GetxController {
  Locale initialLanguage =
      sharedPref!.getString(
            "language",
          ) ==
          "ar"
      ? Locale("ar")
      : Locale("en");
  //================================
  void changelanguage(
    String codelanguage,
  ) {
    Locale locale = Locale(
      codelanguage,
    ); //code language = ar - en - fr
    sharedPref!.setString(
      "language",
      codelanguage,
    );
    Get.updateLocale(locale);
  }

  //================================
}
