import 'package:flutter/material.dart';
import 'package:travel_in/screen/login.dart';
import 'package:travel_in/screen/registration.dart';

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
                  Text('Название приложения'),

                  /// todo: изменить на логотип
                  Icon(Icons.ac_unit, size: 100),
                  RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 25, horizontal: 100),
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
                      child: Text("Вход")),
                  SizedBox(height: 10),
                  RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 25, horizontal: 75),
                      color: Colors.white,
                      textColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationPage()),
                        );
                      },
                      child: Text("Регистрация")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
