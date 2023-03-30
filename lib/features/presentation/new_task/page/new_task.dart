part of 'new_task_import.dart';

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
