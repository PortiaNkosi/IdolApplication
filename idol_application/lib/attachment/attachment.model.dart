import 'dart:convert';

import '../objectinstance.dart';

class Attachment implements ObjectInstance{

  String content;
  String contentType;
  String id;
  String name;

  Attachment({this.content, this.contentType, this.id, this.name});

//maps the values from json to objects
  factory Attachment.fromJson(Map<String, dynamic> json) {
    return Attachment(
      //extracting the keys from json
      content: json['content'],
      contentType: json['contentType'],
      id: json['id']==null?'null':json['id'],
      name: json['name'],

    );
  }

  Map<String, dynamic> toJson() =><String, dynamic> {
   // return {
      'content': content,
      'contentType': contentType,
      'id': id,
      'name': name,
    };
  }
