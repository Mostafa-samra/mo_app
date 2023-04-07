import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mo_app/features/presentation/new_task/widget/elevatebday.dart';
import 'package:mo_app/features/presentation/new_task/widget/table_pre_sou.dart';
import 'package:mo_app/features/presentation/new_task/widget/time_button_wedget.dart';

class TaskTimeContainer extends StatefulWidget {
  const TaskTimeContainer({super.key});

  @override
  State<TaskTimeContainer> createState() => _TaskTimeContainerState();
}

class _TaskTimeContainerState extends State<TaskTimeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      //  height: 300,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TimeButtonWedget(),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_circle_outline,
                        color: Colors.white,
                      )),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      child: const Text(
                        "Wed, Fed 1",
                        style: TextStyle(color: Colors.blue),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Todo ,  In  20 Min",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ))
            ],
          ),
          TablePreSou(
              onTap1: () {},
              onTap2: () {},
              title1: "PreMinder",
              title2: "Dayminder",
              icon1: Icons.refresh,
              icon2: Icons.read_more,
              body1: "30 Minutes",
              body2: "Notice"),
          TablePreSou(
              onTap1: () {},
              onTap2: () {},
              title1: "Sound & Melody",
              title2: "Chase me",
              icon1: Icons.speaker,
              icon2: Icons.run_circle,
              body1: "",
              body2: "10 Minutes"),
          ButtonContaner(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text(
                    "Choose Form contact ",
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                  content: const TextField(
                    decoration: InputDecoration(
                        hintText: "Add a phone number",
                        border: OutlineInputBorder()),
                  ),
                  actions: [
                    TextButton(onPressed: () {}, child: const Text("Cancel")),
                    const SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                        autofocus: true,
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        onPressed: () {},
                        child: const Text("Ok"))
                  ],
                ),
              );
            },
            body1: "",
            icon1: Icons.wallet,
            title1: "Add Countact & Phone",
          ),
          const Text(
            "Repeat: ",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                ElevateBday(
                  text: "Mon",
                ),
                ElevateBday(
                  text: "Tue",
                ),
                ElevateBday(
                  text: "Wed",
                ),
                ElevateBday(
                  text: "Thu",
                ),
                ElevateBday(
                  text: "Fri",
                ),
                ElevateBday(
                  text: "Sat",
                ),
                ElevateBday(
                  text: "Sun",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
