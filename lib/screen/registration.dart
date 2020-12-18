import 'package:flutter/material.dart';
import 'package:travel_in/screen/navBar.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

/// Страница регистрации
class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("APP TITLE"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.center,
                child: Column(children: [
                  Text('Тут регистрация'),
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
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    },
                    child: Text("Далее домашняя"),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
