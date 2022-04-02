import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            const Text(
              "I-Talent",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 100,
              ),
            ),
            const Text(
              "Tom Truyen - 3AONd",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Made with"),
                const SizedBox(width: 16),
                Image.asset(
                  'assets/flutter.png',
                  height: 40,
                ),
              ],
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
      color: Colors.blue,
    );
  }
}
