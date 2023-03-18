import 'package:flutter/material.dart';
import 'package:mo_app/core/stringes/signin_stringes.dart';

class SigninText extends StatelessWidget {
  const SigninText({super.key});

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
          SigninStringes.lIYA,
          style: TextStyle(fontFamily: "SFPro", fontSize: 24),
        ),
      ),
    );
  }
}
