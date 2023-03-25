import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/reminders_page/widgets/detales_slide.dart';

class CurrentTab extends StatelessWidget {
  const CurrentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DetalesSlide(),
        DetalesSlide(),
        DetalesSlide(),
        DetalesSlide(),
      ],
    );
  }
}
