import 'package:flutter/material.dart';
import 'package:travel_in/screen/attractions.dart';

class RaitingPage extends StatefulWidget {
  @override
  _RaitingPageState createState() => _RaitingPageState();
}

class _RaitingPageState extends State<RaitingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: ClipRRect(
            child: ListView.builder(
              itemCount: 5,
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Color(0xFF777777),
                              radius: 25.0,

                              /// backgroundImage: AssetImage(chat.sender.imageUrl),
                            ),
                            SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Text(
                                //   chat.sender.name,
                                //   style: TextStyle(
                                //     color: Colors.black,
                                //     fontSize: 13.0,
                                //     fontWeight: FontWeight.bold,
                                //   ),
                                //   overflow: TextOverflow.ellipsis,
                                // ),
                                Text('Название'),
                                SizedBox(height: 5.0),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  // child: Text(
                                  //   chat.text,
                                  //   style: TextStyle(
                                  //     color: Colors.black,
                                  //     fontSize: 11.0,
                                  //     fontWeight: FontWeight.w600,
                                  //   ),
                                  //   overflow: TextOverflow.ellipsis,
                                  // ),
                                  child: Text('Описание'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Рейтинг',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 5.0),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
