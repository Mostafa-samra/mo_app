import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeButtonWedget extends StatefulWidget {
  const TimeButtonWedget({
    Key? key,
  }) : super(key: key);

  @override
  State<TimeButtonWedget> createState() => _TimeButtonWedgetState();
}

class _TimeButtonWedgetState extends State<TimeButtonWedget> {
  DateTime date = DateTime.now();
  late var formattedDate;
  @override
  void initState() {
    formattedDate = DateFormat('d-MMM-yy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 100,
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white))),
      child: ElevatedButton(
        onPressed: () async {
          await showDatePicker(
            context: context,
            initialDate: date,
            firstDate: DateTime(2022),
            lastDate: DateTime(2030),
          ).then((selectedDate) {
            if (selectedDate != null) {
              setState(() {
                date = selectedDate;
                formattedDate = DateFormat('d-MMM-yy').format(selectedDate);
              });
            }
          });
        },
        child: Text(formattedDate.toString()),
      ),
    );
  }
}
