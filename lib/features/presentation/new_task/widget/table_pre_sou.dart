// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TablePreSou extends StatelessWidget {
  final String title1;
  final String title2;
  final IconData icon1;
  final IconData icon2;
  final String body1;
  final String body2;
  final void Function() onTap1;
  final void Function() onTap2;
  const TablePreSou({
    Key? key,
    required this.title1,
    required this.title2,
    required this.icon1,
    required this.icon2,
    required this.body1,
    required this.body2,
    required this.onTap1,
    required this.onTap2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: InkWell(
            onTap: onTap1,
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              //  height: 200,
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(
                        color: Colors.white,
                      ),
                      bottom: BorderSide(color: Colors.white),
                      right: BorderSide(color: Colors.white))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title1,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Icon(
                        icon1,
                        color: Colors.white,
                      ),
                      Text(
                        body1,
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Flexible(
          child: InkWell(
            onTap: onTap2,
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              //  height: 200,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.white,
                  ),
                  bottom: BorderSide(color: Colors.white),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title2,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Icon(
                        icon2,
                        color: Colors.white,
                      ),
                      Text(
                        body2,
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonContaner extends StatelessWidget {
  final String title1;

  final IconData icon1;

  final String body1;
  final void Function() onTap;
  const ButtonContaner(
      {super.key,
      required this.title1,
      required this.icon1,
      required this.body1,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: InkWell(
          onTap: onTap,
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.white,
                ),
                bottom: BorderSide(color: Colors.white),
                right: BorderSide(color: Colors.white),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: const TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Icon(
                      icon1,
                      color: Colors.white,
                    ),
                    Text(
                      body1,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
        )),
        Flexible(
            child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
        ))
      ],
    );
  }
}
