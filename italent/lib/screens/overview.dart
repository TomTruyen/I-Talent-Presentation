import 'package:flutter/material.dart';
import 'package:italent/pages.dart';
import 'package:italent/widgets/list_item.dart';

class Overview extends StatelessWidget {
  final Function(Pages) gotoPage;

  const Overview({Key? key, required this.gotoPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Inhoudsopgave",
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(height: 20),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              ListItem(
                title: 'Activiteiten',
                gotoPage: gotoPage,
                page: Pages.activities,
              ),
              ListItem(
                title: 'Activiteit 1: Craftworkz',
                gotoPage: gotoPage,
                page: Pages.craftworkz,
              ),
              ListItem(
                title: 'Activiteit 2: Kubernetes',
                gotoPage: gotoPage,
                page: Pages.kubernetes,
              ),
              ListItem(
                title: 'Activiteit 3: Flutter',
                gotoPage: gotoPage,
                page: Pages.flutter,
              ),
              ListItem(
                title: 'Reflectie',
                gotoPage: gotoPage,
                page: Pages.reflection,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
