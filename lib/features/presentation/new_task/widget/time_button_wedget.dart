import 'package:flutter/material.dart';

import 'bottomnavigationbar_timepicker.dart';

class TimeButtonWedget extends StatefulWidget {
  const TimeButtonWedget({
    Key? key,
  }) : super(key: key);

  @override
  State<TimeButtonWedget> createState() => _TimeButtonWedgetState();
}

class _TimeButtonWedgetState extends State<TimeButtonWedget> {
  TimeOfDay time = TimeOfDay.now();

  late var formattedTime;

  @override
  void initState() {
    formattedTime = TimeOfDay.fromDateTime(DateTime(time.hour));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 100,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white))),
      child: ElevatedButton(
        onPressed: () async {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (_) => const BottomNavigationBarTimePicker()));
          showTimePicker(
            context: context,
            initialTime: time,
            anchorPoint: Offset.zero,
            initialEntryMode: TimePickerEntryMode.dial,
            useRootNavigator: true,
            builder: (BuildContext context, child) {
              return Scaffold(
                bottomNavigationBar: BottomNavigationBarTimePicker(),
                appBar: AppBar(),
              );
            },
          ).then((value) {
            if (value != null) {
              setState(() {
                time = value;
                formattedTime = TimeOfDay.fromDateTime(DateTime(value.hour));
              });
            }
          });
        },
        child: Text(
            time.format(context).toString().padLeft(2, "00").padRight(2, "00")),
      ),
    );
    // InkWell(
    //   onTap: () {
    //     showTimePicker(
    //       context: context,
    //       initialTime: TimeOfDay.now(),
    //       builder: (BuildContext context, Widget? child) {
    //         return Directionality(
    //           textDirection: TextDirection.rtl,
    //           child: child!,
    //         );
    //       },
    //     );
    //   },
    //   child: Container(
    //     decoration: BoxDecoration(
    //         border:
    //             Border(bottom: BorderSide(color: Colors.white))),
    //     child: const Text(
    //       "08:00",
    //       style: TextStyle(color: Colors.white),
    //     ),
    //   ),
    // ),
  }
}






/*import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

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
    // InkWell(
    //   onTap: () {
    //     showTimePicker(
    //       context: context,
    //       initialTime: TimeOfDay.now(),
    //       builder: (BuildContext context, Widget? child) {
    //         return Directionality(
    //           textDirection: TextDirection.rtl,
    //           child: child!,
    //         );
    //       },
    //     );
    //   },
    //   child: Container(
    //     decoration: BoxDecoration(
    //         border:
    //             Border(bottom: BorderSide(color: Colors.white))),
    //     child: const Text(
    //       "08:00",
    //       style: TextStyle(color: Colors.white),
    //     ),
    //   ),
    // ),
  }
}
*/






/*import 'package:flutter/material.dart';

class TimeButtonWedget extends StatefulWidget {
  const TimeButtonWedget({Key? key}) : super(key: key);

  @override
  State<TimeButtonWedget> createState() => _TimeButtonWedgetState();
}

class _TimeButtonWedgetState extends State<TimeButtonWedget> {
  final _dateC = TextEditingController();
  final _timeC = TextEditingController();

  ///Date
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(2000);
  DateTime last = DateTime(2025);

  ///Time
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Pickers"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: buildUI(context),
      ),
    );
  }

  Widget buildUI(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        TextFormField(
          controller: _dateC,
          decoration: const InputDecoration(
              labelText: 'Date picker', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: _timeC,
          decoration: const InputDecoration(
              labelText: 'Time picker', border: OutlineInputBorder()),
        ),
        ElevatedButton(
            onPressed: () => displayDatePicker(context),
            child: const Text("Pick Date")),
        ElevatedButton(onPressed: () => displayTimePicker(context), child: const Text("Pick Time")),
      ],
    );
  }

  Future displayDatePicker(BuildContext context) async {
    var date = await showDatePicker(
      context: context,
      initialDate: selected,
      firstDate: initial,
      lastDate: last,
    );

    if (date != null) {
      setState(() {
        _dateC.text = date.toLocal().toString().split(" ")[0];
      });
    }
  }

  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(
        context: context,
        initialTime: timeOfDay);

    if (time != null) {
      setState(() {
        _timeC.text = "${time.hour}:${time.minute}";
      });
    }
  }
}*/