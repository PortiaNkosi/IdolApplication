
import 'package:idol_application/objectinstance.dart';

class Position implements ObjectInstance{
  String id;
  String name;

  Position({this.id, this.name});


  //maps the values from json to objects
  factory Position.fromJson(Map<String, dynamic> json) {
    return Position(
      id: json['id']==null?'null':json['id'],
      name: json['name']==null?'null':json['name'],
     // name: json['name'] ,
    );
  }


  Map<String, dynamic> toJson()=><String, dynamic> {
  //  return {
      'id':id,
      'name':name
    };
  }

