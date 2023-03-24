import 'package:flutter/material.dart';
import 'package:mo_app/core/color/signin_colors.dart';
import 'package:mo_app/core/stringes/signin_stringes.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_connect_text.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_elevated_button.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_face_googl.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_for_text.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_text.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/widgets/signin_textffeld.dart';
import 'package:http/http.dart' as http;

class SignInTab extends StatefulWidget {
  const SignInTab({super.key});

  @override
  State<SignInTab> createState() => _SignInTabState();
}

class _SignInTabState extends State<SignInTab> {
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SigninColors.signinGray1,
      child: Column(
        children: [
          const SigninText(),
          SigninTextFeld(
              obscureText: false,
              controller: phoneController,
              formText: SigninStringes.phone,
              iconButton: Icons.phone,
              onPressedPrefixIcon: () {},
              keyboardType: TextInputType.phone),
          SigninTextFeld(
            obscureText: true,
            controller: passwordController,
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
                login();
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (_) => const RemindersPage()));
                //Navigator.pushNamed(context, "/RemindersPage");
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

  Future<void> login() async {
    if (passwordController.text.isNotEmpty && phoneController.text.isNotEmpty) {
      var response = await http.post(
          Uri.parse("https://omalmisrapp.com/reminder/public/api/login"),
          body: {
            'phone': phoneController.text,
            'password': passwordController.text
          });
      if (response.statusCode == 200) {
        Navigator.pushNamed(context, "/RemindersPage");
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("invelid credentials.")));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Phone number or Password is not allawed")));
    }
  }
}
