import 'package:flutter/material.dart';
import 'package:mo_app/core/color/signin_colors.dart';
import 'package:mo_app/core/stringes/signin_stringes.dart';

class SigninConnectText extends StatelessWidget {
  const SigninConnectText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(right: 10),
        child: const Text(
          SigninStringes.oCW,
          style: TextStyle(
              fontFamily: "poppins",
              fontStyle: FontStyle.normal,
              color: SigninColors.signinBlack),
        ));
  }
}
