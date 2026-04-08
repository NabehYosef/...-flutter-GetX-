import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/main.dart';

class AuthMiddleWare
    extends GetMiddleware {
  @override
  int? get priority => 2;

  @override
  RouteSettings? redirect(
    String? route,
  ) {
    if (sharedPref!.getString("role") ==
        "user") {
      return RouteSettings(
        name: "/HomeMiddleWare",
      );
    }
    if (sharedPref!.getString("role") ==
        "admin") {
      return RouteSettings(
        name: "/AdminMiddleWare",
      );
    }
  }
}
