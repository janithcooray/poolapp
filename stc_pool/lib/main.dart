import 'package:flutter/material.dart';
import 'package:stc_pool/master.dart';
import 'package:stc_pool/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 250,
            ),
            Text(
              "Login",
              style: TextStyle(
                  decoration: TextDecoration.none, color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: width - 200,
              child: Material(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter Username'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: width - 200,
              child: Material(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Enter Password'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: width - 200,
              color: Colors.transparent,
              child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Student()),
                    );
                  },
                  child: Container(child: Text("Login Student"))),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: width - 200,
              color: Colors.transparent,
              child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Student()),
                    );
                  },
                  child: Container(child: Text("Login Visitor"))),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: width - 200,
              color: Colors.transparent,
              child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Master()),
                    );
                  },
                  child: Container(child: Text("Login Master"))),
            )
          ],
        ),
      ),
    );
  }
}
