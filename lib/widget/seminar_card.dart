import 'package:flutter/material.dart';
import 'package:italent/model/activity_model.dart';

class ActivityCard extends StatelessWidget {
  final ActivityModel activity;

  const ActivityCard({Key? key, required this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    activity.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    activity.subtitle,
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const SizedBox(height: 40),
                  Text(
                    activity.description,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 100),
            SizedBox(
              height: 150,
              width: 150,
              child: CircleAvatar(
                backgroundImage: AssetImage(activity.image),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
