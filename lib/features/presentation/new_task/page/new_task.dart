import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/new_task/widget/appbar_widget.dart';
import 'package:mo_app/features/presentation/new_task/widget/category_container.dart';
import 'package:mo_app/features/presentation/new_task/widget/hedline_text.dart';
import 'package:mo_app/features/presentation/new_task/widget/task_container.dart';
import 'package:mo_app/features/presentation/new_task/widget/tasktime_container.dart';

class NewTask extends StatelessWidget {
  const NewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HedlineText(text: "Task :"),
            TaskContainer(),
            HedlineText(text: "CATEGORY"),
            CategoryContainer(),
            HedlineText(text: "TASK TIME :"),
            TaskTimeContainer(),
          ],
        ),
      ),
    );
  }
}
