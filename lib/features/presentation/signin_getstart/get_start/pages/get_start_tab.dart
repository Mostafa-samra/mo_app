import 'package:flutter/material.dart';
import 'package:mo_app/core/color/signin_colors.dart';
import 'package:mo_app/core/stringes/signin_stringes.dart';
import 'package:mo_app/features/presentation/signin_getstart/get_start/widgets/getstart_elevated_button.dart';
import 'package:mo_app/features/presentation/signin_getstart/get_start/widgets/getstart_richtexet.dart';
import 'package:mo_app/features/presentation/signin_getstart/get_start/widgets/getstart_text.dart';
import 'package:mo_app/features/presentation/signin_getstart/get_start/widgets/getstart_textformfeld.dart';
import 'package:http/http.dart' as http;

class GetStartTab extends StatefulWidget {
  const GetStartTab({super.key});

  @override
  State<GetStartTab> createState() => _GetStartTabState();
}

class _GetStartTabState extends State<GetStartTab> {
  var fullNameController = TextEditingController();
  var phoneController = TextEditingController();
  var createPasswordController = TextEditingController();
  var createPassword2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: SigninColors.signinGray1,
        child: Column(
          children: [
            const GetStartText(),
            GetStartTextFormFeld(
              controller: fullNameController,
              formText: GetStart.fullName,
              iconButton: Icons.person,
            ),
            GetStartTextFormFeld(
              keyboardType: TextInputType.phone,
              controller: phoneController,
              formText: SigninStringes.phone,
              iconButton: Icons.phone,
            ),
            GetStartTextFormFeld(
              controller: createPasswordController,
              formText: GetStart.createPassword,
              iconButton: Icons.lock,
              suffixIcon: Icons.remove_red_eye,
            ),
            GetStartTextFormFeld(
              controller: createPassword2Controller,
              formText: GetStart.repeatPassword,
              iconButton: Icons.lock,
              suffixIcon: Icons.remove_red_eye,
            ),
            GetStartElevatedButton(
              buttonColor: SigninColors.signinBlowwithOpesty,
              buttonText: GetStart.getStarted,
              textColor: SigninColors.signinWhite,
              onPressed: () {
                getStart();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const GetStartRichText(),
          ],
        ));
  }

  Future<void> getStart() async {
    if (fullNameController.text.isNotEmpty &&
        phoneController.text.isNotEmpty &&
        createPasswordController.text.isNotEmpty &&
        createPasswordController.text == createPassword2Controller.text) {
      var response = await http.post(
          Uri.parse("https://omalmisrapp.com/reminder/public/api/register"),
          body: {
            "name": fullNameController.text,
            "phone": phoneController.text,
            "password": createPasswordController.text
          });
      if (response.statusCode == 200) {
        Navigator.pushNamed(context, "/SigninPageAndGetStart");
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("invelid credentials.")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please try agan or password not same"),
        ),
      );
    }
  }
}
// Terms of use  // and // Privacy policy.