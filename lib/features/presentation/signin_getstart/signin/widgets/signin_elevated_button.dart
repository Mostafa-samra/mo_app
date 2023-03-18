// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SiginElevatedButton extends StatelessWidget {
  final Color buttonColor;
  final void Function()? onPressed;
  final String buttonText;
  final Color textColor;

  const SiginElevatedButton({
    Key? key,
    required this.buttonColor,
    this.onPressed,
    required this.buttonText,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 15.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            buttonText,
            style:
                TextStyle(fontSize: 17, color: textColor, fontFamily: "Roboto"),
          ),
        ),
      ),
    );
  }
}
