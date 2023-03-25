import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mo_app/features/presentation/reminders_page/widgets/reminders_textformfild_widgets.dart';

class RemindersPage extends StatelessWidget {
  const RemindersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              size: 20,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.add_circled,
                  size: 20,
                ))
          ],
          title: const Text("Reminders"),
        ),
        body: SizedBox(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RemindersTextformfild(
                    formText: "",
                    iconButton: Icons.search,
                  ),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_alt,
                        color: Colors.blue,
                        size: 60,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
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
                      children: [],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
