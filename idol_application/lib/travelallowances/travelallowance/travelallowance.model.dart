
import 'package:idol_application/users/user/user.model.dart';


import '../../objectinstance.dart';

class TravelAllowance implements ObjectInstance{
  String comment;
  double endKm;
  String id;
  double ratePerKm;
  double startKm;
  String status;
  String travelDate;


  User user;

  TravelAllowance({this.comment, this.endKm, this.id, this.ratePerKm,
      this.startKm, this.status, this.travelDate, this.user});

  //maps the values from json to objects
  factory TravelAllowance.fromJson(Map<String, dynamic> json) {
    return TravelAllowance(
      //extracting the keys from json

      comment: json['comment'] ,
      endKm: json['endKm'] ,
      id: json['id'] ,
      ratePerKm: json['ratePerKm'] ,
      startKm: json['startKm'],
      status: json['status'] ,
      travelDate: json['travelDate'],

      user: json['user'] == null
          ? null
          : User.fromJson(json['user']),



    );
  }

  Map<String, dynamic> toJson()=><String, dynamic> {
   // return {
      'comment':comment,
      'endKm':endKm,
      'id':id,
      'ratePerKm':ratePerKm,
      'startKm':startKm,
      'status':status,
      'travelDate':travelDate,

      'user':user
    };
  }

