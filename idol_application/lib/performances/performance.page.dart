
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idol_application/home/drawer.dart';


class PerformanceAppraisalPage extends StatefulWidget {
  PerformanceAppraisalPage() : super();
  final String title = 'Performance Appraisal';

  @override
  _PerformanceAppraisalPageState createState() =>
      _PerformanceAppraisalPageState();
}

class _PerformanceAppraisalPageState extends State<PerformanceAppraisalPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Performance Appraisal',
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
