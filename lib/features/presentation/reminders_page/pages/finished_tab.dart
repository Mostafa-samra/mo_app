import 'package:flutter/material.dart';

class FinishedTab extends StatelessWidget {
  const FinishedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Icon(
          Icons.golf_course,
          size: 100,
          color: Colors.red,
          shadows: [
            Shadow(color: Colors.blue, blurRadius: 10, offset: Offset.infinite),
            Shadow(color: Colors.red, blurRadius: 10, offset: Offset.infinite),
            Shadow(
                color: Colors.black,
                offset: Offset.fromDirection(50),
                blurRadius: 1),
          ],
        ),
      ),
    );
  }
}
