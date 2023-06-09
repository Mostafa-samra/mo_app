// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mo_app/core/color/signin_colors.dart';

class GetStartTextFormFeld extends StatelessWidget {
  final String formText;
  final IconData iconButton;
  final IconData? suffixIcon;
  final void Function()? onPressedPrefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  const GetStartTextFormFeld({
    Key? key,
    required this.formText,
    required this.iconButton,
    this.suffixIcon,
    this.onPressedPrefixIcon,
    this.keyboardType,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        shadowColor: SigninColors.signinWhite,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: formText,
            labelText: formText,
            prefixIcon: IconButton(onPressed: () {}, icon: Icon(iconButton)),
            suffixIcon: IconButton(
              icon: Icon(suffixIcon),
              onPressed: () {},
            ),
          ),
          keyboardType: keyboardType,
          textInputAction: TextInputAction.done,
        ),
      ),
    );
  }
}
