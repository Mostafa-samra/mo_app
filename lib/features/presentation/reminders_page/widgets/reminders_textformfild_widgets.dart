// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RemindersTextformfild extends StatelessWidget {
  final String formText;
  final IconData iconButton;
  final IconData? suffixIcon;
  final void Function()? onPressedPrefixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? hintText;
  const RemindersTextformfild({
    Key? key,
    required this.formText,
    required this.iconButton,
    this.suffixIcon,
    this.onPressedPrefixIcon,
    this.keyboardType,
    this.controller,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width / 1.6,
        child: Material(
          borderRadius: BorderRadius.circular(10),
          borderOnForeground: true,
          color: const Color.fromARGB(255, 20, 1, 194),
          shadowColor: const Color.fromARGB(255, 20, 1, 194),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              hintText: formText,
              prefixText: "Enter Search Keywords Here...",
              hintStyle: TextStyle(color: Colors.white),
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
