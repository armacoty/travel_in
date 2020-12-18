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
      appBar: AppBar(
        title: Text("APP TITLE"),
      ),
      body: Center(
        child: Container(
          color: Colors.black87,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.center,
                child: Column(children: [
                  // Контейнер текстого поля логина и пароля
                  Container(
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          // Тень отбрасываемая полем
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 20.0,
                              offset: Offset(0, 3))
                        ]),
                    child: Column(
                      children: <Widget>[
                        /// Ввод логина
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: Colors.white))),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Логин",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),

                        /// Ввод пароля
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: true,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Пароль",
                                hintStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  /// Кнопка войти
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 60),
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
                    child: Text("Войти"),
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
