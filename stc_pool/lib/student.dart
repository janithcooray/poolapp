import 'package:flutter/material.dart';
import 'package:stc_pool/book.dart';

class Student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: StudentHome(),
      ),
    );
  }
}

class StudentHome extends StatefulWidget {
  @override
  _StudentHomeState createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Container(
      color: Color.fromARGB(255, 230, 230, 230),
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 2,
              width: width,
              color: Color.fromARGB(255, 230, 230, 230),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.account_circle,
                      size: 150,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    "Student",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
            Container(
              height: height / 2,
              width: width,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: width / 4,
                          child: Icon(
                            Icons.info,
                            size: 50,
                          ),
                        ),
                        Container(
                          width: width / 2,
                          child: Text(
                            "Information",
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: width / 4,
                          child: Icon(
                            Icons.book,
                            size: 50,
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Book()),
                            );
                          },
                          child: Container(
                            width: width / 2,
                            child: Text(
                              "Book",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: width / 4,
                          child: Icon(
                            Icons.alarm,
                            size: 50,
                          ),
                        ),
                        Container(
                          width: width / 2,
                          child: Text(
                            "Practices",
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: width / 4,
                          child: Icon(
                            Icons.message,
                            size: 50,
                          ),
                        ),
                        Container(
                          width: width / 2,
                          child: Text(
                            "Message",
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: width / 4,
                          child: Icon(
                            Icons.event,
                            size: 50,
                          ),
                        ),
                        Container(
                          width: width / 2,
                          child: Text(
                            "Event",
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
