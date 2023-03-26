import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/reminders_page/widgets/detales_slide.dart';

class CurrentTab extends StatelessWidget {
  const CurrentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DetalesSlide(
            text1: "Assignment Submissin",
            text2: "Once",
            text3: "22-AUG-2022  12 AM"),
        DetalesSlide(
            text1: "Workout", text2: "Everyday", text3: "22-AUG-2022  9 AM"),
        DetalesSlide(
            text1: "Medicine", text2: "Everyday", text3: "20-AUG-2022  7 AM"),
        DetalesSlide(
            text1: "Meeting",
            text2: "Twice in a week",
            text3: "25-AUG-2022  12 AM"),
      ],
    );
  }
}
