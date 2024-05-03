import 'package:flutter/material.dart';
import 'weatherContainerRightNow.dart';
import 'weatherContainerTonight.dart';
import 'weatherContainerRightNow2.dart';
import 'HomePage.dart';

class MyApp extends StatefulWidget {
  const MyApp({required Key key}): super(key: key);

  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State {

  var _currentPage = 0;

  var _pages = [
    HomePage('Омск'),
    Text('2. Страница День рождения'),
    Text('3. Страница облако'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom navigation',
      home: Scaffold(
        appBar: AppBar(title: Text('Bottom navigation'),),
        body: Center(
          child: _pages.elementAt(_currentPage),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.announcement),
                label: 'Информация'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.cake),
                label: 'День рождения'
            ),
          ],
          currentIndex: _currentPage,
          fixedColor: Colors.blue,
          onTap: (int intIndex) {
            setState(() {
              _currentPage = intIndex;
            });
          },
        ),
      ),
    );
  }
}