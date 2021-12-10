
import 'package:idol_application/attachment/attachment.model.dart';
import 'package:idol_application/projects/project/project.model.dart';
import 'package:idol_application/users/user/user.model.dart';

import '../../objectinstance.dart';

class Task implements ObjectInstance
{

String createDate;
String description;
String dueDate;
String id;
String name;
int reminderDaysBeforeDueDate;
bool sendReminder;
String startDate;

User assignedBy;
User assignee;
Attachment attachments;
User createdBy;
Project project;

Task({
      this.createDate,
      this.description,
      this.dueDate,
      this.id,
      this.name,
      this.reminderDaysBeforeDueDate,
      this.sendReminder,
      this.startDate,
      this.assignedBy,
      this.assignee,
      this.attachments,
      this.createdBy,
      this.project});

//maps the values from json to objects
  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      //extracting the keys from json
     createDate: json['createDate'] ,
     description: json['description'],
     dueDate: json['dueDate'] ,
     id: json['id'] ,
     name: json['name'] ,
     reminderDaysBeforeDueDate: json['reminderDaysBeforeDueDate'],
     sendReminder: json['sendReminder'],
     startDate: json['startDate'],


      assignedBy: json['assignedBy'] == null
          ? null
          : User.fromJson(json['assignedBy']),
      assignee: json['assignee'] == null
          ? null
          : User.fromJson(json['assignee']),
      attachments: json['attachments'] == null
          ? null
          : Attachment.fromJson(json['attachments']),
      createdBy: json['createdBy'] == null
          ? null
          : User.fromJson(json['createdBy']),

    );
  }

  Map<String, dynamic> toJson()=><String, dynamic> {
    //return {
      'createDate':createDate,
      'description':description,
      'dueDate':dueDate,
      'id':id,
      'name':name,
      'reminderDaysBeforeDueDate':reminderDaysBeforeDueDate,
      'sendReminder':sendReminder,
      'startDate':startDate,
      'assignedBy':assignedBy,
      'assignee':assignee,
      'attachments':attachments,
      'createdBy':createdBy,

    };
  }

