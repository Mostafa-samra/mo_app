import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar appBarWidgetsReminders() => AppBar(
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
    );
