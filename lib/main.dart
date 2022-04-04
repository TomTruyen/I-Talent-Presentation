import 'package:flutter/material.dart';
import 'package:italent/pages.dart';
import 'package:italent/screens/activities.dart';
import 'package:italent/screens/craftworkz.dart';
import 'package:italent/screens/end.dart';
import 'package:italent/screens/flutter.dart';
import 'package:italent/screens/hackathon.dart';
import 'package:italent/screens/kubernetes.dart';
import 'package:italent/screens/landing.dart';
import 'package:italent/screens/overview.dart';
import 'package:italent/screens/reflection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final PageController controller = PageController();

  void gotoPage(Pages page) {
    controller.animateToPage(
      page.index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTapUp: (details) {
          var x = details.globalPosition.dx;
          var width = MediaQuery.of(context).size.width;

          if (width / 2 > x) {
            controller.previousPage(
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
            );
          } else {
            controller.nextPage(
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
            );
          }
        },
        child: PageView(
          controller: controller,
          children: <Widget>[
            const LandingPage(),
            Overview(gotoPage: gotoPage),
            const Activities(),
            const Hackathon(),
            const Craftworkz(),
            const Kubernetes(),
            const Flutter(),
            const Reflection(),
            const End(),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(8),
        height: 75,
        child: Image.asset('assets/pxl.png'),
      ),
    );
  }
}
