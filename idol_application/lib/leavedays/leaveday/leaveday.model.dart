
import 'package:idol_application/attachment/attachment.model.dart';
import 'package:idol_application/objectinstance.dart';
import 'package:idol_application/users/user/user.model.dart';


class LeaveDay implements ObjectInstance{
  String comment;
  String createDate;
  int days;
  String end;
  String id;
  String start;
  String type;

  User user;
  Attachment attachments;

  LeaveDay({this.comment, this.createDate, this.days, this.end, this.id,
      this.start, this.type, this.user, this.attachments});


  //maps the values from json to objects
  factory LeaveDay.fromJson(Map<String, dynamic> json) {
    return LeaveDay(
     //extracting the keys from json

      comment: json['comment'],
      createDate: json['createDate'],
      days: json['days'],
      end: json['end'] ,
      id: json['id'],
      start: json['start'],
      type: json['type'],

      user: json['user'] == null
          ? null
          : User.fromJson(json['user']),
      attachments: json['attachments'] == null
          ? null
          : Attachment.fromJson(json['attachments']),

    );
  }
  Map<String, dynamic> toJson()=><String, dynamic> {
  //  return {
      'comment':comment,
      'createDate':createDate,
      'days':days,
      'end':end,
      'id':id,
      'start':start,
      'type':type,
      'user':user,
      'attachments':attachments,
    };
  }

