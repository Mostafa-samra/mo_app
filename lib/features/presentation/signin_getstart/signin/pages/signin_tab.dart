import 'package:flutter/material.dart';
import 'package:mo_app/core/color/signin_colors.dart';
import 'package:mo_app/core/stringes/signin_stringes.dart';
import 'package:mo_app/features/presentation/reminders/reminders.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_connect_text.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_elevated_button.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_face_googl.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_for_text.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_text.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_textffeld.dart';

class SignInTab extends StatelessWidget {
  const SignInTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SigninColors.signinGray1,
      child: Column(
        children: [
          const SigninText(),
          SigninTextFeld(
              formText: SigninStringes.mail,
              iconButton: Icons.email,
              onPressedPrefixIcon: () {},
              keyboardType: TextInputType.emailAddress),
          SigninTextFeld(
            formText: SigninStringes.password,
            iconButton: Icons.lock,
            onPressedPrefixIcon: () {},
            suffixIcon: Icons.remove_red_eye,
          ),
          const SigninForText(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SiginElevatedButton(
              buttonColor: SigninColors.signinBlowwithOpesty,
              buttonText: SigninStringes.login,
              textColor: SigninColors.signinWhite,
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => const RemindersPage()));
                Navigator.of(context).pushNamed("/RemindersPage");
              },
            ),
          ),
          const SizedBox(height: 10),
          const SigninConnectText(),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SigninFaveGoogle(
                    textR: SigninStringes.google,
                    image: "assets/images/google.png"),
                SigninFaveGoogle(
                    textR: SigninStringes.facebook,
                    image: "assets/images/facebook.png")
              ],
            ),
          )
        ],
      ),
    );
  }
}
