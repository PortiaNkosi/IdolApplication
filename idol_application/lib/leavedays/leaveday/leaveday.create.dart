import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeaveCreate extends StatefulWidget {
  @override
  _LeaveCreateState createState() => _LeaveCreateState();
}

class _LeaveCreateState extends State<LeaveCreate> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[10],
      appBar: AppBar(
        title: Text(
          'Leave Details',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey[400],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(260, 8, 5, 0),
                    child: Text(
                      '*Required fields',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Card(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            // margin: const EdgeInsets.all(11.0),
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(10, 17, 10, 2),
                            child: Text(
                              'Employee *',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
