import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:idol_application/loginbean.model.dart';

import 'package:idol_application/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config.dart';




class UserService extends Services{

  UserService(){
    url='${Config.url+'users'}' ;
  }



//save
  Future<dynamic> saveLogin(LoginBean instance ) async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString('token');
    var response;

    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "X_TOKEN": "$stringValue",
    };

    response = await http.post(
      url+'/login',
        headers: headers,
        body:jsonEncode(instance.toJson()));

    if (response.statusCode == 200) {
      var responseBody= json.decode(response.body);
      var now="okay";
      String nn=responseBody['token'];
      prefs.setString('token', nn);
      print("Successful Login!");
      print(response.body);
      LoginBean.fromJson(json.decode(response.body));
      return now;

    } else {
      throw Exception('Failed to Login!');
    }
  }


  Future<http.Response>getProfile() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString('token');
    var response;

    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "X_TOKEN": "$stringValue",
    };


    response = await http.get(
        'https://app.idolconsulting.co.za/idols/users/profile',
        headers: headers);


    if (response.statusCode == 200) {
      print("Successful");
      print("${response.body}");
      return response;
    } else {
      throw Exception('Failed to pull');
    }
  }

}