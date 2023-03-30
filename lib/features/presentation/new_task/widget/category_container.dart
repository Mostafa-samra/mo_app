import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 5),
          child: DropdownButton<String>(
            items: <String>['Default', 'B', 'C', 'D'].map((String value) {
              return DropdownMenuItem<String>(
                alignment: Alignment.center,
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ));
  }
}
