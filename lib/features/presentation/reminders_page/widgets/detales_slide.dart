import 'package:flutter/material.dart';

class DetalesSlide extends StatefulWidget {
  const DetalesSlide({super.key});

  @override
  State<DetalesSlide> createState() => _DetalesSlideState();
}

class _DetalesSlideState extends State<DetalesSlide> {
  // bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.yellow,
      ),
//padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
      width: 400,
      height: 100,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
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
                  Text("Assignment Submission"),
                  Text("once"),
                  Text("22-AUG-2022   12 AM"),
                ],
              ),
            ),
            Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: Checkbox(
                    tristate: true,
                    value: true,
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
