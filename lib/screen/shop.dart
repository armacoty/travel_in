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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 35),
            Row(
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
                            offset: Offset(0, 3))
                      ]),
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
            ),
            SizedBox(height: 25),
            Row(
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
                            offset: Offset(0, 3))
                      ]),
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
            ),
            SizedBox(height: 25),
            Row(
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
                            offset: Offset(0, 3))
                      ]),
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
            ),
            SizedBox(height: 25),
            Row(
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
                            offset: Offset(0, 3))
                      ]),
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
            ),
            SizedBox(height: 25),
            Row(
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
                            offset: Offset(0, 3))
                      ]),
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
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

/// Примерно как-то так
/*
SizedBox(height: 35),
            for (var i = 0; i < 5; i++)
              {
                _ServiceCard(),
                SizedBox(height: 25),
              },
              */

/*
class _ServiceCard extends StatelessWidget {
  const _ServiceCard({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                    offset: Offset(0, 3))
              ]),
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
}
*/
