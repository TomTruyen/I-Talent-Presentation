import 'package:flutter/material.dart';
import 'package:italent/widget/header.dart';

class Hackathon extends StatelessWidget {
  const Hackathon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Header(text: 'Hackathon: Cyber Security Challenge'),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                '10/03/2022 - 11/03/2022 (Online)',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SizedBox(height: 20),
                        Text(
                          'Een jaarlijkse hackathon georganiseerd voor studenten. Hierin werd verwacht dat we als team de challenges oplosten om zo te stijgen in de ranking. Mijn team eindigde als 146e van de 253 teams.',
                        ),
                        SizedBox(height: 50),
                        Text('Mijn team:'),
                        SizedBox(height: 10),
                        Text('• Hanne Van Mechelen (SWM)'),
                        Text('• Levi Bauweraerts (SWM)'),
                        Text('• Arthur Lenaers (SWM)'),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/hackathon_challenge_2.png',
                        ),
                        Image.asset(
                          'assets/hackathon_scoreboard.png',
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
