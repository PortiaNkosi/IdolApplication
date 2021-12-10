
import 'package:date_format/date_format.dart';

import 'package:idol_application/companies/company/company.model.dart';
import 'package:idol_application/objectinstance.dart';
import 'package:idol_application/users/user/user.model.dart';


enum  Status{
  Initialized,
  Pending,
  Completed,

}
class Project implements ObjectInstance{

  //final DateFormat dateformat = DateFormat('dd MMMM YYYY');
  String id;
  double budget;
  String createDate;
  String description;
  String endDate;
  String name;
  String startDate;
  Status status;
  Company company;
  User manager;


  Project({
      this.id,
      this.budget,
      this.createDate,
      this.description,
      this.endDate,
      this.name,
      this.startDate,
      this.status,
      this.company,
      this.manager,

  });

  convertDateFromString() {
    DateTime todayDate = DateTime.parse(this.createDate);
    return formatDate(todayDate, [MM, ' ', yyyy]);
  }



  //maps the values from json to objects
  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      //extracting the keys from json
      id: json['id'] ,
      budget: json['budget'] ,
      createDate: json['createDate'] ,
      description: json['description'] ,
      endDate: json['endDate'],
      name: json['name'],
      startDate: json['startDate'],

      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] ),
      manager: json['manager'] == null
          ? null
          : User.fromJson(json['manager'] ),


    );
  }

  Map<String, dynamic> toJson()=><String, dynamic> {
   // return {
      'id':id,
      'budget':budget,
      'createDate':createDate,
      'description':description,
      'endDate':endDate,
      'name':name,
      'startDate':startDate,
      'status':status,
      'company':company,
      'manager':manager,

    };
  }
