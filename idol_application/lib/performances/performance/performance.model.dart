
import 'package:date_format/date_format.dart';
import 'package:idol_application/attachment/attachment.model.dart';
import 'package:idol_application/objectinstance.dart';
import 'package:idol_application/projects/project/project.model.dart';
import 'package:idol_application/users/user/user.model.dart';

class Performance implements ObjectInstance{
  String comment;
  String createDate;
  String id;
  String status;
  String type;

  User user;
  User manager;
  Project project;
  User submittedBy;
  Attachment attachment;

  Performance({this.comment, this.createDate, this.id, this.status, this.type, this.user, this.manager, this.project, this.submittedBy, this.attachment});
  convertDateFromString() {
    DateTime todayDate = DateTime.parse(this.createDate);
    return formatDate(todayDate, [dd,' ',MM, ' ', yyyy]);
  }


//maps the values from json to object
  factory Performance.fromJson(Map<String, dynamic> json) {
    return Performance(
//extracting the keys from json

      comment: json['comment'],
      createDate: json['createDate'] ,
      id: json['id'] ,
      status: json['status'] ,
      type: json['type'] ,

      user: json['user'] == null
          ? null
          : User.fromJson(json['user']),
      manager: json['manager'] == null
          ? null
          : User.fromJson(json['manager']),
      project: json['project'] == null
          ? null
          : Project.fromJson(json['project']),
      submittedBy: json['submittedBy'] == null
          ? null
          : User.fromJson(json['submittedBy']),
      attachment: json['attachment'] == null
          ? null
          : Attachment.fromJson(json['attachment']),

      );
 }

  Map<String, dynamic> toJson()=><String, dynamic> {
   // return {
      'id':id,
      'status':status,
      'type':type,
      'user':user,
      'manager':manager,
      'project':project,
      'submittedBy':submittedBy,
      'attachment':attachment
    };
  }
