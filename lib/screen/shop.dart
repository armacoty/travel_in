import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

/// todo: Сделать Column\Row отдельным виджетом
class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgrounds/3.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(8, (index) {
            return Center(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0x85FFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: IconButton(
                    iconSize: 100,
                    icon: Image.asset(
                      'assets/SBER/sber_eapteka.png',
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
/*
Widget row() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        height: 140,
        width: 140,
        decoration: BoxDecoration(
          color: Color(0x9AFFFFFF),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Color(0x62F57600),
              blurRadius: 10.0,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(serviceSber),
        ),
      ),
      Container(
        height: 140,
        width: 140,
        decoration: BoxDecoration(
            color: Color(0x9AFFFFFF),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Color(0x62F57600),
                  blurRadius: 10.0,
                  offset: Offset(0, 3))
            ]),
        child: Center(
          child: IconButton(
            iconSize: 100,
            icon: Image.asset(
              '',
              // 'assets/SBER/sber_eapteka.png',
            ),
            onPressed: () {},
          ),
        ),
      ),
    ],
  );
}
*/
