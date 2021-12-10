
import 'package:idol_application/address.model.dart';
import 'package:idol_application/attachment/attachment.model.dart';
import 'package:idol_application/users/user/user.model.dart';
import 'package:json_annotation/json_annotation.dart';


import '../../objectinstance.dart';

@JsonSerializable()
class Company implements ObjectInstance {
  var url ='https://app.idolconsulting.co.za/idols/file/';
  String id;
  String name;
  String description;
  String createDate;

  User accountManager;
  Attachment logo;
  Address address;

  Company({this.id, this.name, this.description, this.createDate,
      this.accountManager, this.logo, this.address});

  //maps the values from json to objects
  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
        //extracting the keys from json
        id: json['id'] ,
        name: json['name'] ,
        description: json['description'] ,
        createDate: json['createDate'] ,

      accountManager: json['accountManager'] == null
          ? null
          : User.fromJson(json['accountManager']),
      logo: json['logo'] == null
          ? null
          : Attachment.fromJson(json['logo']),

      address: json['address'] == null
          ? null
          : Address.fromJson(json['address']),


    );
  }


  Map<String, dynamic> toJson() =><String, dynamic>{
   // return {
      'id':id,
      'name':name,
      'description':description,
      'createDate':createDate,
      'accountManager':accountManager,
      'logo':logo,
      'address':address
    };

  }
