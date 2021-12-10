
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idol_application/home/drawer.dart';


class TimesheetsPage extends StatefulWidget {
  TimesheetsPage() : super();
  final String title = 'Timesheets';

  @override
  _TimesheetsPageState createState() => _TimesheetsPageState();
}

class _TimesheetsPageState extends State<TimesheetsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Timesheets',
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


