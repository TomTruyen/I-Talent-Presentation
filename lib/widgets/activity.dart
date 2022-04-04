import 'package:flutter/material.dart';
import 'package:italent/model/activity_model.dart';

class Activity extends StatelessWidget {
  final ActivityModel activity;

  const Activity({
    Key? key,
    required this.activity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          child: Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        activity.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        activity.subtitle,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(activity.speaker),
                      Text(activity.company),
                      const SizedBox(height: 20),
                      Text(activity.description),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    activity.image,
                    height: 200,
                    width: 200,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
