import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:idol_application/companies/companies.page.dart';
import 'package:idol_application/leavedays/leavedays.page.dart';
import 'package:idol_application/payslips/payslips.page.dart';
import 'package:idol_application/performances/performance.page.dart';
import 'package:idol_application/projects/projects.page.dart';
import 'package:idol_application/timesheets/timesheets.page.dart';
import 'package:idol_application/travelallowances/travelallowances.page.dart';
import 'package:idol_application/users/user/user.model.dart';
import 'package:idol_application/users/users.page.dart';
import 'package:idol_application/users/users.services.dart';
import 'package:http/http.dart' as http;

class DrawerPage extends StatefulWidget {
  DrawerPage() : super();
  final String title = 'Drawer';

  @override
  _DrawerPageState createState() => _DrawerPageState();
}


class _DrawerPageState extends State<DrawerPage> {
  User picture;
  UserService api= UserService();
  bool isLoading = false;
  bool load =false;
  bool progress=true;

  Future searchProfile() async{
    http.Response response= await api.getProfile();
     setState(() {
       final data = json.decode(response.body);
       picture=User.fromJson(data);

      isLoading = false;
       load=false;


     });

     return picture;

  }
@override
void initState(){
    this.searchProfile();
    super.initState();
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 60,
            width: 300,
            margin: EdgeInsets.only(top: 5),
            color: Colors.white,
            child: Image(
              image: AssetImage('images/logo1.png'),
            ),
          ),
          Expanded(
              child: DrawerHeader(

            child:   progress
                ? Center(child: CircularProgressIndicator())
                :
          //  isLoading ?  Center(child: CircularProgressIndicator()):
                // ? Center(child: CircularProgressIndicator())
                GestureDetector(
                    child: Container(
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blue,
                      // backgroundImage:NetworkImage(
                      //   picture.profilePicture.id=='null'?"https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png":
                      //   'https://app.idolconsulting.co.za/idols/file/'+
                      //       picture.profilePicture.id,
                      // ),
                    ),
                  ),
                  Center(
                    child:   Text(
                     'Name',
                      style: TextStyle(
                          color: Colors.white, fontSize: 20.0),),
                  ),
                  Center(child: Text(
                    'Company Name',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18.0),
                  ),),
                  Center(child:   Text(
                    'Position',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18.0),
                  ),),
                ],
              ),
            )),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.jpg'),
                    fit: BoxFit.cover)),
          )),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 450,
                  child: ListView(
                    children: <Widget>[
                      /// ListTile(
                      CustomListTitle(Icons.home_outlined, 'Home', ()=>{}),
                      CustomListTitle(
                          Icons.business_center, 'Companies',() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CompaniesPage()),
                        );
                      }),
                      CustomListTitle(
                          Icons.pie_chart_outline_sharp, 'Project', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProjectsPage()),
                        );
                      }),
                      CustomListTitle(
                          Icons.people_outline, 'Employees', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UsersPage()),
                        );
                      }),
                      CustomListTitle(
                          Icons.calendar_today, 'Timesheets',  () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TimesheetsPage()),
                        );
                      }),
                      CustomListTitle(
                          Icons.pending_actions, 'Leave Days', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LeaveDaysPage()),
                        );
                      }),
                      CustomListTitle(
                          Icons.my_library_books_sharp, 'PaySlips', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PayslipsPage()),
                        );
                      }),
                      CustomListTitle(
                          Icons.message_sharp, 'Performance',() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PerformanceAppraisalPage()),
                        );
                      }),
                      CustomListTitle(Icons.sports_basketball,
                          'Travel Allowances', () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TravelAllowancesPage()),
                            );
                          }),

                      ListTile()
                    ],
                  ),
                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  void setState(fn) {
    super.setState(fn);
    progress = false;
  }
}

class CustomListTitle extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTitle(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: InkWell(
        splashColor: Colors.orangeAccent,
        onTap: onTap,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    icon,
                    color: Colors.black26,
                    size: 29,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(text,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                        )),
                  )
                ],
              ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );

  }

}
