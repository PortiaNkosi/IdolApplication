
import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idol_application/home/drawer.dart';

class PayslipsPage extends StatefulWidget {
  PayslipsPage() : super();
  final String title = 'Payslips';

  @override
  _PayslipsPageState createState() => _PayslipsPageState();
}

class _PayslipsPageState extends State<PayslipsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payslips',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      drawer: DrawerPage(),

    );
  }

}
