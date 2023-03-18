// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:mo_app/core/color/signin_colors.dart';

class SigninFaveGoogle extends StatelessWidget {
  final String image;
  final String textR;
  const SigninFaveGoogle({
    Key? key,
    required this.image,
    required this.textR,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: SigninColors.signinWhite,
      height: 40,
      width: 140,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textR,
                style: const TextStyle(
                    fontSize: 17,
                    fontFamily: "Roboto",
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
    );
  }
}
