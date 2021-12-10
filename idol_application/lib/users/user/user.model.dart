
import 'package:idol_application/attachment/attachment.model.dart';
import 'package:idol_application/companies/company/company.model.dart';
import 'package:idol_application/position/position.model.dart';


import '../../objectinstance.dart';

class User implements ObjectInstance{
  var url ='https://app.idolconsulting.co.za/idols/users/profile';

int annualLeaveDays;
String contactNumber;
String createDate;
String email;
String employeeNumber;
int familyResponsibility;
String firstName;
String id;
String lastName;
int nonDeductiveLeave;
String password;
int sickLeaveDays;
int studyLeaveDays;
String idNumber;
List<dynamic>roles=['Employee','Admin','Owner','AcountManager','Manager'];

Company company;
Position position;
Attachment profilePicture;


User({
      this.annualLeaveDays,
      this.contactNumber,
      this.createDate,
      this.email,
      this.employeeNumber,
      this.familyResponsibility,
      this.firstName,
      this.id,
      this.lastName,
      this.nonDeductiveLeave,
      this.password,
      this.sickLeaveDays,
      this.studyLeaveDays,
      this.idNumber,
      this.company,
      this.position,
      this.profilePicture,
      this.roles});


@override
String toString(){
  return
  '${this.firstName} '
      '${this.lastName}';
}

    //maps the values from json to objects
      factory User.fromJson(Map<String, dynamic> json) {
    return User(

      //extracting the keys from json

      annualLeaveDays: json['annualLeaveDay'],
      contactNumber: json['contactNumber'],
      createDate: json['createDate'],
      email: json['email'],
      employeeNumber: json['employeeNumber'],
      familyResponsibility: json['familyResponsibility'],
     // firstName: json['firstName'],
      firstName: json['firstName']==null?'null':json['firstName'],
      id: json['id']==null?'null':json['id'],
     // lastName: json['lastName'],
      lastName: json['lastName']==null?'null':json['lastName'],
      nonDeductiveLeave: json['nonDeductiveLeave'],
      password: json['password'],
      sickLeaveDays: json['sickLeaveDays'],
      studyLeaveDays: json['studyLeaveDays'],
      idNumber: json['idNumber'],

      profilePicture: json['profilePicture']==null?Attachment(id:'null'):Attachment.fromJson(json['profilePicture']),
      position: json['position']==null?Position(name:'null'):Position.fromJson(json['position']),
      company: json['company']==null?Company(name:'null'):Company.fromJson(json['company']),
      roles: json['roles'],


  );
}

Map<String, dynamic> toJson()=><String, dynamic>  {
 // return {

    'annualLeaveDays': annualLeaveDays,
    'contactNumber':contactNumber,
    'createDate':createDate,
    'email':email,
    'employeeNumber':employeeNumber,
    'familyResponsibility':familyResponsibility,
    'firstName':firstName,
    'id':id,
    'lastName':lastName,
    'nonDeductiveLeave':nonDeductiveLeave,
    'password':password,
    'sickLeaveDays':sickLeaveDays,
    'studyLeaveDays':studyLeaveDays,
    'idNumber':idNumber,
    'company':company,
    'position':position,
    'profilePicture':profilePicture,
    'roles':roles


  };
}
