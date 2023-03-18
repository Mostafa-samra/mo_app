import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mo_app/core/color/signin_colors.dart';
import 'package:mo_app/core/stringes/signin_stringes.dart';

class GetStartRichText extends StatelessWidget {
  const GetStartRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              style: const TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 13,
                  color: SigninColors.signinBlack),
              children: <TextSpan>[
                const TextSpan(text: GetStart.creatingAnAccount),
                TextSpan(
                    style: const TextStyle(color: SigninColors.signinBlow1),
                    text: "Terms of use",
                    recognizer: TapGestureRecognizer()..onTap = () {}),
                const TextSpan(text: " and "),
                TextSpan(
                    style: const TextStyle(color: SigninColors.signinBlow1),
                    text: "Privacy policy.",
                    recognizer: TapGestureRecognizer()..onTap = () {}),
              ])),
    );
  }
}
