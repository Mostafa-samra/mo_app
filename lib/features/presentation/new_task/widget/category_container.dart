import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [TextFormField()],
      ),
    );
  }
}