import 'package:flutter/material.dart';
import 'package:italent/data/seminars.dart';
import 'package:italent/widget/header.dart';
import 'package:italent/widget/seminar_card.dart';

class ActivityOverview extends StatelessWidget {
  const ActivityOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Header(text: 'Overzicht seminaries'),
            ListView.builder(
              controller: ScrollController(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ActivityCard(activity: seminars[index]);
              },
              itemCount: seminars.length,
            )
          ],
        ),
      ),
    );
  }
}
