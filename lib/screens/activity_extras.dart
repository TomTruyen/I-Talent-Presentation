import 'package:flutter/material.dart';
import 'package:italent/data/extras.dart';
import 'package:italent/widget/header.dart';
import 'package:italent/widget/seminar_card.dart';

class ExtraActivities extends StatelessWidget {
  const ExtraActivities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Header(text: 'Extra activiteiten'),
            ListView.builder(
              controller: ScrollController(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ActivityCard(activity: extras[index]);
              },
              itemCount: extras.length,
            )
          ],
        ),
      ),
    );
  }
}
