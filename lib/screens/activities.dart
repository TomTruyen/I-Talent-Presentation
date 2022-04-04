import 'package:flutter/material.dart';
import 'package:italent/data/seminars.dart';
import 'package:italent/widgets/activity.dart';

class Activities extends StatefulWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (_index > 0)
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: const Size(40, 40),
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
              ),
              child: const Icon(
                Icons.chevron_left,
                color: Colors.green,
              ),
              onPressed: () {
                setState(() {
                  _index--;
                });
              },
            ),
          const SizedBox(width: 10),
          Activity(activity: seminares[_index]),
          const SizedBox(width: 10),
          if (_index < seminares.length - 1)
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: const Size(40, 40),
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
              ),
              child: const Icon(
                Icons.chevron_right,
                color: Colors.green,
              ),
              onPressed: () {
                setState(() {
                  _index++;
                });
              },
            ),
        ],
      ),
    );
  }
}
