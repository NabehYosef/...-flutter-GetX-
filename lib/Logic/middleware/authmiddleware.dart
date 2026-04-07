import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_app/main.dart';

class AuthMiddleWare
    extends GetMiddleware {
  @override
  int? get priority => 2;

  @override
  // ignore: unnecessary_overrides
  RouteSettings? redirect(
    String? route,
  ) {
    if (sharedPref!.getString("user") !=
        null) {
      return RouteSettings(
        name: "/HomeMiddleWare",
      );
    }
    if (sharedPref!.getString("role") !=
        null) {
      return RouteSettings(
        name: "/AdminMiddleWare",
      );
    }
    return super.redirect(route);
  }
}
