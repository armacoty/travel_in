import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

final String serviceSber = 'Сервис';

/// todo: Сделать Column\Row отдельным виджетом
class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgrounds/2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 35),
              for (var i = 0; i < 4; i++) ...[row(), SizedBox(height: 20)]
            ],
          ),
        ),
      ),
    );
  }
}

Widget row() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        height: 140,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.white,
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
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Color(0x62F57600),
                  blurRadius: 10.0,
                  offset: Offset(0, 3))
            ]),
        child: Center(
          child: Text(serviceSber),
        ),
      ),
    ],
  );
}
