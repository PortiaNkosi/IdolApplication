
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idol_application/home/drawer.dart';


class CompaniesPage extends StatefulWidget {
  CompaniesPage() : super();
  final String title = 'Companies';

  @override
  _CompaniesPageState createState() => _CompaniesPageState();
}

class _CompaniesPageState extends State<CompaniesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Companies',
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
