import 'package:flutter/material.dart';
import 'package:travel_in/screen/home.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _seletedItem = 0;

  /// Страницы,
  var _pages = [
    /// todo: добавить потом другие страницы
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_seletedItem],
      ),

      /// Нижняя навигационная панель
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(color: Colors.black),
        selectedLabelStyle: TextStyle(color: Colors.grey),
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 35), label: "Один"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 35), label: "Два"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, size: 35), label: "Три"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message, size: 35), label: "Четыре"),
        ],
        currentIndex: _seletedItem,
        onTap: (index) {
          setState(
            () {
              _seletedItem = index;
            },
          );
        },
      ),
    );
  }
}
