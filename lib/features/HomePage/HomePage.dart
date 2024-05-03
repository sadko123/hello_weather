import 'package:flutter/material.dart';
import 'weatherContainerRightNow.dart';
import 'weatherContainerTonight.dart';
import 'weatherContainerRightNow2.dart';
import 'screen.dart';


class HomePage extends StatefulWidget {
  const HomePage(String city, {super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {

  String city = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Text('Right now', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
          SizedBox(
            height: 300,
            child: MyScrollingScreen(city),
          ),
          Text('Tonight and tommorow', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 300,
            child: MyScrollingScreen(city),
          ),
          Text('This week', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 300,
            child: MyScrollingScreen(city),
          ),
        ],
      ),
    );
  }
}


class MyScrollingScreen extends StatefulWidget {
  MyScrollingScreen(String city, {super.key});

  @override
  State<MyScrollingScreen> createState() => _MyScrollingScreenState();
}

class _MyScrollingScreenState extends State<MyScrollingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  String city = 'London';
  bool _showWidget1 = true;

  @override
  Widget build(BuildContext context) {
    String city = '';
    return GestureDetector(
      onTap: () {
        setState(() {
          _showWidget1 = !_showWidget1;
        });
      },
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 500),
        child: _showWidget1 ? weatherConteinerRightNow(city) : weatherConteinerRightNow2(city),
      ),
    );
  }
}


