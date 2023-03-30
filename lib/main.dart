import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/new_task/page/new_task_import.dart';

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
      home: NewTask(),
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
