import 'package:flutter/material.dart';
import 'package:travel_in/screen/navBar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

/// Страница логина
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              padding: EdgeInsets.all(20.0),
              child: CircleAvatar(
                radius: 55.0,
                backgroundColor: Color(0xFFF57600),
                backgroundImage: NetworkImage(''),
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/logo.png'),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Text('TRAVEL IN',
                style: TextStyle(color: Color(0xFFF57600), fontSize: 30)),
            SizedBox(height: 30),
            Container(
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x62F57600),
                        blurRadius: 10.0,
                        offset: Offset(0, 3))
                  ]),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: Colors.white))),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Login",
                          hintStyle: TextStyle(color: Colors.grey[400])),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x62F57600),
                        blurRadius: 10.0,
                        offset: Offset(0, 3))
                  ]),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey[400])),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 85),
                  color: Color(0xFFF57600),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                  child:
                      Text("Sing in", style: TextStyle(color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}
