// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RemindersTextformfild extends StatelessWidget {
  final String formText;
  final IconData iconButton;
  final IconData? suffixIcon;
  final void Function()? onPressedPrefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  const RemindersTextformfild({
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
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width / 1.6,
        child: Material(
          borderOnForeground: true,
          color: Colors.blue,
          shadowColor: Colors.blue,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: formText,
              labelText: formText,
              prefixIcon: IconButton(onPressed: () {}, icon: Icon(iconButton)),
            ),
            keyboardType: keyboardType,
            textInputAction: TextInputAction.done,
          ),
        ),
      ),
    );
  }
}
