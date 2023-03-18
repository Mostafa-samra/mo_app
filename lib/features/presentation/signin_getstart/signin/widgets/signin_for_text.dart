import 'package:flutter/material.dart';
import 'package:mo_app/core/color/signin_colors.dart';
import 'package:mo_app/core/stringes/signin_stringes.dart';

class SigninForText extends StatelessWidget {
  const SigninForText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomRight,
        margin: const EdgeInsets.only(right: 10, top: 20, bottom: 20),
        child: const Text(
          SigninStringes.fP,
          style: TextStyle(
              color: SigninColors.signinGrayBlack,
              fontFamily: "Roboto",
              fontStyle: FontStyle.italic),
        ));
  }
}
