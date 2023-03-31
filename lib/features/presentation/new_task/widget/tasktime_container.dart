import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/new_task/widget/elevatebday.dart';
import 'package:mo_app/features/presentation/new_task/widget/table_pre_sou.dart';

class TaskTimeContainer extends StatelessWidget {
  const TaskTimeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
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
                  Text(
                    "08:00",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_circle_outline,
                        color: Colors.white,
                      )),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
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
                      child: Text(
                        "Wed, Fed 1",
                        style: TextStyle(color: Colors.blue),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Todo ,  In  20 Min",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ))
            ],
          ),
          TablePreSou(
              title1: "PreMinder",
              title2: "Dayminder",
              icon1: Icons.refresh,
              icon2: Icons.read_more,
              body1: "30 Minutes",
              body2: "Notice"),
          TablePreSou(
              title1: "Sound & Melody",
              title2: "Chase me",
              icon1: Icons.speaker,
              icon2: Icons.run_circle,
              body1: "",
              body2: "10 Minutes"),
          ButtonContaner(
            body1: "",
            icon1: Icons.wallet,
            title1: "Add Countact & Phone",
          ),
          Text(
            "Repeat: ",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Row(
            children: [
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
          )
        ],
      ),
    );
  }
}
