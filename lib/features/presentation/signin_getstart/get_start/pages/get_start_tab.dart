import 'package:flutter/material.dart';
import 'package:mo_app/core/color/signin_colors.dart';
import 'package:mo_app/core/stringes/signin_stringes.dart';
import 'package:mo_app/features/presentation/reminders/reminders.dart';
import 'package:mo_app/features/presentation/signin_getstart/get_start/widgets/getstart_elevated_button.dart';
import 'package:mo_app/features/presentation/signin_getstart/get_start/widgets/getstart_richtexet.dart';
import 'package:mo_app/features/presentation/signin_getstart/get_start/widgets/getstart_text.dart';
import 'package:mo_app/features/presentation/signin_getstart/get_start/widgets/getstart_textformfeld.dart';

class GetStartTab extends StatelessWidget {
  const GetStartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: SigninColors.signinGray1,
        child: Column(
          children: [
            const GetStartText(),
            const GetStartTextFormFeld(
              formText: GetStart.fullName,
              iconButton: Icons.person,
            ),
            const GetStartTextFormFeld(
              formText: GetStart.mail,
              iconButton: Icons.mail,
            ),
            const GetStartTextFormFeld(
              formText: GetStart.createPassword,
              iconButton: Icons.lock,
              suffixIcon: Icons.remove_red_eye,
            ),
            const GetStartTextFormFeld(
              formText: GetStart.repeatPassword,
              iconButton: Icons.lock,
              suffixIcon: Icons.remove_red_eye,
            ),
            GetStartElevatedButton(
              buttonColor: SigninColors.signinBlowwithOpesty,
              buttonText: GetStart.getStarted,
              textColor: SigninColors.signinWhite,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const Reminders()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const GetStartRichText(),
          ],
        ));
  }
}
// Terms of use  // and // Privacy policy.