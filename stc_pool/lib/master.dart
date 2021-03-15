import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stc_pool/studentinfo.dart';

class Master extends StatefulWidget {
  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MasterHome(),
    );
  }
}

class MasterHome extends StatelessWidget {
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 2,
              color: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.all(
                            Radius.circular(150.0),
                          )),
                      child: Center(
                        child: Text(
                          "N",
                          style: TextStyle(
                              fontSize: 53,
                              decoration: TextDecoration.none,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        "Some Name (Master)",
                        style: TextStyle(
                            fontSize: 23,
                            decoration: TextDecoration.none,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: height / 2,
              color: Colors.white,
              child: ModStudent(),
            ),
            Container(
              height: height / 2,
              color: Colors.white,
              child: ModEvent(),
            )
          ],
        ),
      ),
    );
  }
}

class ModStudent extends StatelessWidget {
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(20),
      decoration: new BoxDecoration(
          color: Color.fromARGB(255, 230, 230, 230),
          borderRadius: new BorderRadius.all(
            Radius.circular(15),
          )),
      child: Column(
        children: [
          Container(
            height: 60,
            color: Colors.green,
            child: Center(
              child: Text(
                "Student Manage",
                style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    color: Colors.white),
              ),
            ),
          ),
          student(0),
          student(0),
          student(0),
          student(0),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: width - 120,
            color: Colors.transparent,
            child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentInfo()),
                  );
                },
                child: Container(child: Text("Show More>>"))),
          )
        ],
      ),
    );
  }

  Container student(var id) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.white,
      width: double.infinity,
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            width: width / 8,
            height: width / 8,
            decoration: new BoxDecoration(
                color: Colors.blue,
                borderRadius: new BorderRadius.all(
                  Radius.circular(50),
                )),
          ),
          Text(
            "Some student",
            style: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.none,
                color: Colors.black),
          ),
          Container(
            width: width / 8,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}

class ModEvent extends StatefulWidget {
  @override
  _ModEventState createState() => _ModEventState();
}

class _ModEventState extends State<ModEvent> {
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(20),
      decoration: new BoxDecoration(
          color: Color.fromARGB(255, 230, 230, 230),
          borderRadius: new BorderRadius.all(
            Radius.circular(15),
          )),
      child: Column(
        children: [
          Container(
            height: 60,
            color: Colors.orange,
            child: Center(
              child: Text(
                "Event Manage",
                style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    color: Colors.white),
              ),
            ),
          ),
          student(0),
          student(0),
          student(0),
          student(0),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: width - 120,
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
                child: Container(child: Text("Show More>>"))),
          )
        ],
      ),
    );
  }

  Container student(var id) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.white,
      width: double.infinity,
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            width: width / 8,
            height: width / 8,
            decoration: new BoxDecoration(
                color: Colors.blue,
                borderRadius: new BorderRadius.all(
                  Radius.circular(50),
                )),
          ),
          Text(
            "Some Event",
            style: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.none,
                color: Colors.black),
          ),
          Container(
            width: width / 8,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}
