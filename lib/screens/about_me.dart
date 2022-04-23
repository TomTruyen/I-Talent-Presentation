import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: const Text(
              "Over mij",
              style: TextStyle(fontSize: 40),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: const Text(
              "• Naam: Tom Truyen",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: const Text(
              "• PXL: Applicatieontwikkeling",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: const Text(
              "• Hobby: Fitness",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: const Text(
              "• Hobby: Programmeren",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width / 6,
            child: const Text(
              "• Ambitie: Amerika",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
