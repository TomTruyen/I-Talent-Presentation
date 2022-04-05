import 'package:flutter/material.dart';

class Hackathon extends StatelessWidget {
  const Hackathon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Hackathon: Cyber Security Challenge",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "10/03/2022 - 11/03/2022 (Online)",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
        const SizedBox(height: 10),
        const Text(
            "Mijn team: Hanne Van Mechelen (SWM), Levi Bauweraerts (SWM) en Arthur Lenaers (SWM)"),
        const SizedBox(height: 10),
        Image.asset(
          'assets/hackathon_scoreboard.png',
          height: 50,
          width: MediaQuery.of(context).size.width / 2,
        ),
        Image.asset(
          'assets/hackathon_challenge_2.png',
          width: MediaQuery.of(context).size.width / 1.5,
        ),
      ],
    );
  }
}
