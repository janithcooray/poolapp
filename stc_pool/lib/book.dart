import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:ui';
//import 'package:animations/animations.dart';

class Book extends StatefulWidget {
  @override
  _BookState createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book"),
      ),
      body: Pool(),
    );
  }
}

class Pool extends StatefulWidget {
  @override
  _PoolState createState() => _PoolState();
}

class _PoolState extends State<Pool> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                      child: Text(
                    "Select Date",
                    style: TextStyle(fontSize: 30),
                  ))),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: CalendarDatePicker(
                  firstDate: new DateTime.now(),
                  initialDate: new DateTime.now(),
                  lastDate: new DateTime(2021, 08),
                  onDateChanged: (DateTime d) {},
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Center(
                      child: Text(
                    "Select Time",
                    style: TextStyle(fontSize: 30),
                  ))),
              TimeSlots()
            ],
          ),
        ),
      ),
    );
  }
}

class TimeSlots extends StatefulWidget {
  @override
  _TimeSlotsState createState() => _TimeSlotsState();
}

class _TimeSlotsState extends State<TimeSlots> {
  @override
  Widget build(BuildContext context) {
    List<Widget> a = new List();
    for (var i = 0; i < 6; i++) {
      a.add(TimeSlot("09:31", "10:00"));
    }
    return Container(
      child: Column(
        children: a,
      ),
    );
  }

  Container TimeSlot(String start, String end) {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ConfirmBook()),
          );
        },
        child: Container(
          margin: EdgeInsets.all(8),
          decoration: new BoxDecoration(
              color: Colors.blue,
              borderRadius: new BorderRadius.all(
                Radius.circular(15.0),
              )),
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                "From " + start + " to " + end,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text("Capacity 14/20 People",
                  style: TextStyle(fontSize: 18, color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}

class ConfirmBook extends StatefulWidget {
  @override
  _ConfirmBookState createState() => _ConfirmBookState();
}

class _ConfirmBookState extends State<ConfirmBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Booking"),
      ),
      body: Material(
        child: Center(
          child: Text("Lorem Ipsum"),
        ),
      ),
    );
  }
}
