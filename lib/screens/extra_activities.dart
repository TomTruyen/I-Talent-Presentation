import 'package:flutter/material.dart';

class ExtraActivities extends StatefulWidget {
  const ExtraActivities({Key? key}) : super(key: key);

  @override
  State<ExtraActivities> createState() => _ExtraActivitiesState();
}

class _ExtraActivitiesState extends State<ExtraActivities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: const Text("Use carousel like on Activities page"),
    );
  }
}
