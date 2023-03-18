import 'package:flutter/material.dart';
import 'package:mo_app/core/stringes/signin_stringes.dart';

class GetStartText extends StatelessWidget {
  const GetStartText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft / 1.2,
      child: const Padding(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 10,
        ),
        child: Text(
          GetStart.cAA,
          style: TextStyle(fontFamily: "poppins", fontSize: 24),
        ),
      ),
    );
  }
}
