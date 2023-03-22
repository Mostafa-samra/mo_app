// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/intro/pages/intro_page.dart';
import 'package:mo_app/features/presentation/routes.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin_page.dart';

import 'features/presentation/reminders_page/reminders_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      initialRoute: "/", onGenerateRoute: MyAppRoute.generateRoute,
      // routes: <String, WidgetBuilder>{
      //   '/': (context) => const IntroPage(),
      //   '/SigninPageAndGetStart': (context) => const SigninPageAndGetStart(),
      //   '/RemindersPage': (context) => const RemindersPage(),
      // },
    );
  }
}
