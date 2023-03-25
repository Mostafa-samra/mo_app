import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/routes.dart';

import 'features/presentation/reminders_page/pages/reminders_page.dart';

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
      home: RemindersPage(),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      // initialRoute: "/", onGenerateRoute: MyAppRoute.generateRoute,

      // routes: <String, WidgetBuilder>{
      //   '/': (context) => const IntroPage(),
      //   '/SigninPageAndGetStart': (context) => const SigninPageAndGetStart(),
      //   '/RemindersPage': (context) => const RemindersPage(),
      // },
    );
  }
}
