// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// late final String text1;
// late final String text2;
// late final String text3;

class DetalesSlide extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  const DetalesSlide({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  // bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.yellow,
      ),
//padding: EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      width: 400,
      height: 100,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: SizedBox(
                  height: 200,
                  width: 10,
                  child: Icon(Icons.notifications_active_rounded)),
            ),
            SizedBox(
              height: 100,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(text1),
                  Text(text2),
                  Text(text3),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: Checkbox(
                    tristate: false,
                    value: false,
                    onChanged: (newBool) {
                      // setState(() {
                      //   isChecked = newBool;
                      // });
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
