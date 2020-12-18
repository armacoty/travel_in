import 'package:flutter/material.dart';
import 'package:travel_in/screen/login.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP TITLE"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text('Тут welcome'),
                  RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 110),
                      color: Colors.white,
                      textColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text("Далее логин")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
