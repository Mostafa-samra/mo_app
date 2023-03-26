import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) => AppBar(
      title: const Text("New Task"),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/NewTask");
            },
            icon: const Icon(Icons.check))
      ],
    );
