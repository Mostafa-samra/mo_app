import 'package:flutter/material.dart';

class Reminders extends StatelessWidget {
  const Reminders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialApp(
          debugShowCheckedModeBanner: false,
          debugShowMaterialGrid: true,
          home: Scaffold(
            appBar: AppBar(),
          ),
        ),
      ],
    );
  }
}
