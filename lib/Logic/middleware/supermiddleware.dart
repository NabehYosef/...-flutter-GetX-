import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_app/main.dart';

class Supermiddleware
    extends GetMiddleware {
  @override
  int? get priority => 1;

  bool myvar = true;

  @override
  // ignore: unnecessary_overrides
  RouteSettings? redirect(
    String? route,
  ) {
    if (myvar == true) {
      return RouteSettings(
        name: "/Super",
      );
    }
    return super.redirect(route);
  }
}
