
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idol_application/home/drawer.dart';


class TravelAllowancesPage extends StatefulWidget {


  TravelAllowancesPage() : super();
  final String title = 'Travel Allowances';

  @override
  _TravelAllowancesPageState createState() => _TravelAllowancesPageState();
}

class _TravelAllowancesPageState extends State<TravelAllowancesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Allowances',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),),
        backgroundColor: Colors.blueGrey[300],
      ),
      drawer: DrawerPage(),

    );

  }

}
