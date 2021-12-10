
import 'package:idol_application/users/user/user.model.dart';

import '../../objectinstance.dart';


class Timesheet implements ObjectInstance{
  String comment;
  String end;
  String hours;
  String id;
  String normalHours;
  String overtime;
  String saturdayHours;
  String start;
  String sundayHours;

  User user;

  Timesheet({
      this.comment,
      this.end,
      this.hours,
      this.id,
      this.normalHours,
      this.overtime,
      this.saturdayHours,
      this.start,
      this.sundayHours,
      this.user});

  //maps the values from json to objects
  factory Timesheet.fromJson(Map<String, dynamic> json) {
    return Timesheet(
      //extracting the keys from json

      comment: json['comment'] ,
      end: json['end'],
      hours: json['hours'],
      id: json['id'] ,
      normalHours: json['normalHours'],
      overtime: json['overtime'],
      saturdayHours: json['saturdayHours'],
      start: json['start'],
      sundayHours: json['sundayHours'],
      //user: User.fromJson(json["user"]),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user']),

    );
  }

  Map<String, dynamic> toJson()=><String, dynamic> {
   // return {
      'comment':comment,
      'end':end,
      'hours':hours,
      'id':id,
      'normalHours':normalHours,
      'overtime':overtime,
      'saturdayHours':saturdayHours,
      'start':start,
      'sundayHours':sundayHours,
      'user':user,
    };
  }


