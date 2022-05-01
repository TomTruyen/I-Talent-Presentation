import 'package:flutter/material.dart';
import 'package:italent/screens/about_me.dart';
import 'package:italent/screens/activity_extras.dart';
import 'package:italent/screens/activity_one.dart';
import 'package:italent/screens/activity_overview.dart';
import 'package:italent/screens/activity_three.dart';
import 'package:italent/screens/activity_two.dart';
import 'package:italent/screens/hackathon.dart';
import 'package:italent/screens/portfolio.dart';
import 'package:italent/screens/pxl.dart';
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
        primarySwatch: Colors.green,
        textTheme: Theme.of(context).textTheme.copyWith(
              headline3: Theme.of(context).textTheme.headline3?.copyWith(
                    color: Colors.green,
                  ),
              bodyText2: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 16,
                  ),
            ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _controller;

  int _index = 0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 10, vsync: this, initialIndex: 0)
      ..addListener(() {
        setState(() {
          _index = _controller.index;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  'I-Talent portfolio',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              sidenav(),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: const <Widget>[
                Portfolio(),
                AboutMe(),
                ActivityOverview(),
                PXL(),
                Hackathon(),
                ExtraActivities(),
                ActivityOne(),
                ActivityTwo(),
                ActivityThree(),
                Reflection(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget sidenav() {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width / 4,
      child: ListView(
        controller: ScrollController(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          ListTile(
            title: const Text('Portfolio'),
            selected: _index == 0,
            onTap: () {
              _controller.animateTo(0);
            },
          ),
          ListTile(
            title: const Text('Over mij'),
            selected: _index == 1,
            onTap: () {
              _controller.animateTo(1);
            },
          ),
          ListTile(
            title: const Text('Overzicht seminaries'),
            selected: _index == 2,
            onTap: () {
              _controller.animateTo(2);
            },
          ),
          ListTile(
            title: const Text('PXL activiteiten'),
            selected: _index == 3,
            onTap: () {
              _controller.animateTo(3);
            },
          ),
          ListTile(
            title: const Text('Hackathon'),
            selected: _index == 4,
            onTap: () {
              _controller.animateTo(4);
            },
          ),
          ListTile(
            title: const Text('Extra activiteiten'),
            selected: _index == 5,
            onTap: () {
              _controller.animateTo(5);
            },
          ),
          ListTile(
            title: const Text('Activiteit 1: Craftworkz'),
            selected: _index == 6,
            onTap: () {
              _controller.animateTo(6);
            },
          ),
          ListTile(
            title: const Text('Activiteit 2: Kubernetes'),
            selected: _index == 7,
            onTap: () {
              _controller.animateTo(7);
            },
          ),
          ListTile(
            title: const Text('Activiteit 3: Flutter'),
            selected: _index == 8,
            onTap: () {
              _controller.animateTo(8);
            },
          ),
          ListTile(
            title: const Text('Reflectie'),
            selected: _index == 9,
            onTap: () {
              _controller.animateTo(9);
            },
          )
        ],
      ),
    );
  }
}
