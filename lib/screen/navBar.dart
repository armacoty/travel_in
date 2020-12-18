import 'package:flutter/material.dart';
import 'package:travel_in/screen/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      home: MyHomePage(),
    );
  }
}

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
    WelcomePage(),
    WelcomePage(),
    WelcomePage(),
    WelcomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_seletedItem],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFF57600),
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.blue[300]),
        selectedLabelStyle: TextStyle(color: Colors.blue[100]),
        selectedItemColor: Colors.white,
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
