import 'package:flutter/material.dart';

class WeeklyCard extends StatelessWidget {
  final String week;
  const WeeklyCard({super.key, required this.week});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 85,
          child: Text(
            week,
            style:  const TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          width: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/thunder.png', height: 30),
              const Text(
                "Thunder",
                style: TextStyle(color: Colors.lightBlue),
              ),
            ],
          ),
        ),
        RichText(
            text: const TextSpan(
                text: '+19°',
                style:
                    TextStyle(color: Colors.amber, fontWeight: FontWeight.w600),
                children: [
              TextSpan(
                text: '+17°',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
              )
            ])),
      ],
    );
  }
}