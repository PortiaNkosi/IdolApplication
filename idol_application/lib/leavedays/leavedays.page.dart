
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idol_application/home/drawer.dart';

class LeaveDaysPage extends StatefulWidget {
  LeaveDaysPage() : super();
  final String title = 'Leave Days';

  @override
  _LeaveDaysPageState createState() => _LeaveDaysPageState();
}

class _LeaveDaysPageState extends State<LeaveDaysPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Leave Days',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.blueGrey[300],
      ),
      drawer: DrawerPage(),

    );
  }
}