import 'package:flutter/material.dart';
import 'package:idol_application/companies/companies.page.dart';

void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your apication.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App_Idolconsulting',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: CompaniesPage(),
    );
  }
}
