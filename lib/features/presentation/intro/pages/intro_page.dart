import 'package:flutter/material.dart';
import 'package:mo_app/core/color/intro_colors.dart';
import 'package:mo_app/core/stringes/intro_string.dart';
import 'package:mo_app/features/presentation/intro/widgets/intro_elevated_button.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/splash_screen.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 100,
            bottom: 100,
            child: IntroElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const SigninPageAndGetStart()));
                },
                buttonColor: IntroColors.introWhite,
                buttonText: IntroString.logIn,
                textColor: IntroColors.introBlou),
          ),
          Positioned(
            left: 100,
            bottom: 20,
            child: IntroElevatedButton(
                onPressed: () {},
                buttonColor: IntroColors.introBlou,
                buttonText: IntroString.skip,
                textColor: IntroColors.introWhite),
          ),
        ],
      ),
    );
  }
}
