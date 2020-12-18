import 'package:flutter/material.dart';
import 'package:travel_in/screen/home.dart';
import 'package:travel_in/screen/prear.dart';

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
    PreARPage(),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFFFB900),
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle: TextStyle(color: Colors.grey),
        selectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset('assets/favorites.png',
                  width: 30, height: 30, fit: BoxFit.contain),
              label: "Один"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/shopping-cart.png',
                  width: 30, height: 30, fit: BoxFit.contain),
              label: "Магазин"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/placeholder.png',
                  width: 30, height: 30, fit: BoxFit.contain),
              label: "Карта"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/bear.png',
                  width: 30, height: 30, fit: BoxFit.contain),
              label: "Гид"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/user.png',
                  width: 30, height: 30, fit: BoxFit.contain),
              label: "Профиль"),
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
