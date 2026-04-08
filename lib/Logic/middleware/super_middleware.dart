import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Supermiddleware
    extends GetMiddleware {
  @override
  int? get priority => 2;

  bool myvar = true;
  @override
  RouteSettings? redirect(
    String? route,
  ) {
    if (myvar == true) {
      return RouteSettings(
        name: "super",
      );
    }
    //  return super.redirect(route);
  }
}
