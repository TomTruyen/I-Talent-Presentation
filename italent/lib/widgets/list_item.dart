import 'package:flutter/material.dart';
import 'package:italent/pages.dart';

class ListItem extends StatelessWidget {
  final String title;
  final Function(Pages) gotoPage;
  final Pages page;

  const ListItem(
      {Key? key,
      required this.title,
      required this.gotoPage,
      required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LimitedBox(
          maxWidth: MediaQuery.of(context).size.width / 6,
          child: ListTile(
            title: Text(
              "• $title",
              style: const TextStyle(fontSize: 20),
            ),
            onTap: () => gotoPage(page),
          ),
        ),
      ],
    );
  }
}
