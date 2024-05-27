import 'package:flutter/material.dart';
import 'package:move_daily/style.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Calendar",
        style: AppTextStyles.title,
      )),
      body: const Center(
        child: Text("Calendar"),
      ),
    );
  }
}
