import 'package:flutter/material.dart';
import 'package:mo_app/features/presentation/signin_getstart/get_start/pages/get_start_tab.dart';
import 'package:mo_app/features/presentation/signin_getstart/signin/pages/signin_tab.dart';

class SigninPageAndGetStart extends StatelessWidget {
  const SigninPageAndGetStart({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Sign In",
              ),
              Tab(
                text: "Get Started",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SignInTab(),
            GetStartTab(),
          ],
        ),
      ),
    );
  }
}
