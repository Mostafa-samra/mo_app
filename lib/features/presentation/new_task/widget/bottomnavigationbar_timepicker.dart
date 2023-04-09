import 'dart:async';
import 'package:flutter/material.dart';

class BottomNavigationBarTimePicker extends StatefulWidget {
  const BottomNavigationBarTimePicker({super.key});

  @override
  State<BottomNavigationBarTimePicker> createState() =>
      _BottomNavigationBarTimePickerState();
}

class _BottomNavigationBarTimePickerState
    extends State<BottomNavigationBarTimePicker> {
  TimeOfDay time = TimeOfDay.now();

  late var formattedTime;

  @override
  void initState() {
    formattedTime = TimeOfDay.fromDateTime(DateTime(time.hour));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Column(
        children: [
          SizedBox(
            child: TimePickerDialog(initialTime: time),
            // onTimeChange: (TimeOfDay time) {
            //   print(
            //       "What we get the value of the time is now $time");
            // },
          ),

          DisplayFeatureSubScreen(
            child: Container(
              child: Text("data"),
            ),
          ),
          Text("data")
          // BottomNavigationBar(
          //   items: [],
          // )
        ],
      )),
    );
  }

  Future<void> showTime() async {
    final TimeOfDay? show = await showTimePicker(
      context: context,
      initialTime: time,
    ).then((value) {
      if (value != null) {
        setState(() {
          time = value;
          formattedTime = TimeOfDay.fromDateTime(DateTime(value.hour));
        });
      }
    });
  }

  //  Future<TimeOfDay?> _showTimePicker()  {
  // return  showTimePicker(
  //     context: context,
  //     initialTime: time,
  //   ).then((value) {
  //     if (value != null) {
  //       setState(() {
  //         time = value;
  //         formattedTime = TimeOfDay.fromDateTime(DateTime(value.hour));
  //       });
  //     }
  //   });
//  }
}
