import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/reminders_page/pages/current_tab.dart';
import 'package:mo_app/features/presentation/reminders_page/pages/finished_tab.dart';
import 'package:mo_app/features/presentation/reminders_page/widgets/appbar_widgets.dart';
import 'package:mo_app/features/presentation/reminders_page/widgets/reminders_textformfild_widgets.dart';

class RemindersPage extends StatelessWidget {
  const RemindersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidgetsReminders(),
        body: SizedBox(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const RemindersTextformfild(
                    formText: "",
                    hintText: "hello",
                    iconButton: Icons.search,
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_alt,
                        color: Color.fromARGB(255, 20, 1, 194),
                        size: 60,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.3,
                child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      bottom: const TabBar(
                        labelColor: Colors.blue,
                        tabs: [
                          Tab(
                            text: "Current",
                          ),
                          Tab(
                            text: "Finished",
                          ),
                        ],
                      ),
                    ),
                    body: const TabBarView(
                      children: [
                        CurrentTab(),
                        FinishedTab(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
