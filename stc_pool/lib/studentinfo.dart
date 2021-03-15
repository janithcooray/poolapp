import 'dart:ui';

import 'package:flutter/material.dart';

class StudentInfo extends StatefulWidget {
  @override
  _StudentInfoState createState() => _StudentInfoState();
}

class _StudentInfoState extends State<StudentInfo> {
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Material(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.lightBlue,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 0),
                        padding: EdgeInsets.all(10),
                        width: 150,
                        height: 150,
                        color: Colors.lightBlue,
                        child: Container(
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
                      ),
                      Container(
                        width: width - 150,
                        child: Center(
                          child: Text(
                            "Student name",
                            style: TextStyle(
                                fontSize: 33,
                                decoration: TextDecoration.none,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Events(),
                      Events(),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Center(
                          child: Text(
                            "Skills",
                            style: TextStyle(
                                fontSize: 33,
                                decoration: TextDecoration.none,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Material(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Chip(
                                  avatar: CircleAvatar(
                                    backgroundColor: Colors.grey.shade800,
                                    child: Text('F'),
                                  ),
                                  label: Text('Freestyle'),
                                ),
                                Chip(
                                  avatar: CircleAvatar(
                                    backgroundColor: Colors.grey.shade800,
                                    child: Text('B'),
                                  ),
                                  label: Text('Backstroke'),
                                ),
                                Chip(
                                  avatar: CircleAvatar(
                                    backgroundColor: Colors.grey.shade800,
                                    child: Text('B'),
                                  ),
                                  label: Text('Breaststroke'),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Center(
                                child: Text(
                                  "Level",
                                  style: TextStyle(
                                      fontSize: 33,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Chip(
                                  avatar: CircleAvatar(
                                    backgroundColor: Colors.grey.shade800,
                                    child: Text('B'),
                                  ),
                                  label: Text('Biginner'),
                                ),
                                Chip(
                                  avatar: CircleAvatar(
                                    backgroundColor: Colors.grey.shade800,
                                    child: Text('M'),
                                  ),
                                  label: Text('Moderate'),
                                ),
                                Chip(
                                  avatar: CircleAvatar(
                                    backgroundColor: Colors.grey.shade800,
                                    child: Text('A'),
                                  ),
                                  label: Text('Advanced'),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Center(
                                child: Text(
                                  "Current Practice",
                                  style: TextStyle(
                                      fontSize: 33,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            Dropdown(),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Center(
                                child: Text(
                                  "Current Practice",
                                  style: TextStyle(
                                      fontSize: 33,
                                      decoration: TextDecoration.none,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            DataRow(),
                            DataRow(),
                            DataRow(),
                            DataRow(),
                            DataRow(),
                            DataRow(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('Event Name'),
              subtitle:
                  Text('Some Stadium, Colombo. on the 2nd of March, 2021.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Details'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Cancel'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownValue = 'Freestyle';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Freestyle', 'Backstroke', 'Breaststroke', 's']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DataRow extends StatefulWidget {
  @override
  _DataRowState createState() => _DataRowState();
}

class _DataRowState extends State<DataRow> {
  static const int numItems = 10;
  List<bool> selected = List<bool>.generate(numItems, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.all(
                  Radius.circular(150.0),
                )),
            child: Center(
              child: Text(
                "Lorem Ipsum",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 150, 150, 150)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
