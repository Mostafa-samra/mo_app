import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/intro/pages/intro_page.dart';
import 'package:mo_app/features/presentation/new_task/page/new_task_import.dart';
import 'package:mo_app/features/presentation/reminders_page/pages/reminders_page.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin_page.dart';

class MyAppRoute {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const IntroPage());

      case "/SigninPageAndGetStart":
        return MaterialPageRoute(builder: (_) => const SigninPageAndGetStart());
      case "/RemindersPage":
        return MaterialPageRoute(builder: (_) => const RemindersPage());
      case "/NewTask":
        return MaterialPageRoute(builder: (_) => const NewTask());

      default:
        return MaterialPageRoute(builder: (_) => const IntroPage());
    }
  }
}
