import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/intro/pages/intro_page.dart';
import 'package:mo_app/features/presentation/reminders/reminders.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin_page.dart';

class MyAppRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            settings: settings, builder: (_) => const IntroPage());

      case "/SigninPageAndGetStart":
        return MaterialPageRoute(
            settings: settings, builder: (_) => const SigninPageAndGetStart());
      case "/RemindersPage":
        return MaterialPageRoute(
            settings: settings, builder: (_) => const RemindersPage());

      default:
        return null;
    }
  }
}
