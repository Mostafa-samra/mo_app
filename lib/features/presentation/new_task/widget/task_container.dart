import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/new_task/widget/text_field_icon_wedgit.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: 20,
      //    width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFieldIconwidget(titleNote: "Title:", icon: Icons.mic),
              TextFieldIconwidget(titleNote: "Note:", icon: Icons.add),
            ],
          )
        ],
      ),
    );
  }
}
