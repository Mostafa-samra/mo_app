import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/reminders_page/widgets/detales_slide.dart';

class FinishedTab extends StatelessWidget {
  const FinishedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DetalesSlide(
            text1: "Assignment ", text2: "Once", text3: "22-AUG-2022  7 AM"),
        DetalesSlide(
            text1: "Shopping", text2: "Once", text3: "5-AUG-2022  3 AM"),
        DetalesSlide(
            text1: "Dinner", text2: "Once", text3: "11-AUG-2022  5 AM"),
        DetalesSlide(
            text1: "Family Time",
            text2: "Twice in a week",
            text3: "2-AUG-2022  12 AM"),
      ],
    );
  }
}
