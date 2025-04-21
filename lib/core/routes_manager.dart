import 'package:electrocar_app/screen/authentication/signIn/signin.dart';
import 'package:electrocar_app/screen/authentication/signUp/signup.dart';
import 'package:flutter/material.dart';

class RoutesManager {
  static const String initialRoute = "/";
  static const String signIn = "/signIn";
  static const String signUp = "/signUp";
  static const String homeRoute = "/home";
  static const String profileRoute = "/profile";
  static const String settingsRoute = "/settings";

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case profileRoute:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => const Placeholder());
      case initialRoute:
        return MaterialPageRoute(builder: (_) => const Placeholder());

      default:
        return null;
    }
  }
}
