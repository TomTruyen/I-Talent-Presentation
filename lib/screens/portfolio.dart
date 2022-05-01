import 'package:flutter/material.dart';
import 'package:italent/widget/header.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Header(text: 'Portfolio'),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '''Dit portfolio is gemaakt in opdracht van de opleiding Toegepaste Informatica aan PXL. \nHet maakt onderdeel uit van mijn eindpresentatie voor het vak I-Talent.
              ''',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
