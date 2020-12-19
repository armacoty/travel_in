import 'package:flutter/material.dart';
import 'package:travel_in/client.dart';
import 'package:travel_in/screen/attractions.dart';

class RaitingPage extends StatefulWidget {
  @override
  _RaitingPageState createState() => _RaitingPageState();
}

class _RaitingPageState extends State<RaitingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backgrounds/4.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          child: ListView.builder(
            itemCount: client.getAttractions().length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AttractionsScreen(
                        // attractions:
                        ),
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      // Иконка
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff7c94b6),
                          border: Border.all(
                            color: Colors.grey,
                            width: 40,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Image.asset(
                            '${client.getAttractions()[index].imageUrl}'),
                      ),
                      Container(
                        width: 220,
                        height: 75,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20.0),
                        decoration: BoxDecoration(
                          color: Color(0x85FFFFFF),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '${client.getAttractions()[index].name}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Рейтинг: ${client.getAttractions()[index].rating}',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
