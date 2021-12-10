import 'dart:async';

import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'objectinstance.dart';



abstract class Services{

  String url;



  //Get All



  Future<List<dynamic>> getAll() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString('token');
    var response;

    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "X_TOKEN": "$stringValue",
    };


    response = await http.get(url+'/all',
        headers: headers);


    if (response.statusCode == 200) {
      print("Successful");
      print("${response.body}");
      return json.decode(response.body);
    } else {
      throw Exception('Failed to pull');
    }
  }

//Get by Id

  Future<http.Response> getById(String id) async {

    final response = await get(url+'/'+id);

    if (response.statusCode == 200) {
      return http.Response.fromStream(json.decode(response.body));
    } else {
      throw Exception('Failed to load ');
    }
  }


//Delete By Id


  Future<void> deleteById(String id) async {
    Response res = await delete(url+'/'+id);

    if (res.statusCode == 200) {
      print("deleted");
    } else {
      throw "Failed to delete ";
    }
  }

Future<http.Response> search(int page, int perPage, String  sortOrder, String sortField, String keyword)
async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String stringValue = prefs.getString('token');
  var response;

  Map<String, String> headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
    "X_TOKEN": "$stringValue",
  };


  response = await http.get(
    url + '/${page}'+'/${perPage}'+'/${ sortOrder}'+'/${sortField}'+'?keyword='+keyword,
    headers:headers);

  if(response.statusCode == 200){

    print(response.body);
    return response;
  //return json.decode(response.body);
  }

  else{
  throw Exception('Failed to search');
  }

}


  //Save

  Future<http.Response> save(ObjectInstance instance ) async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringValue = prefs.getString('token');
    var response;

    Map<String, String> headers = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "X_TOKEN": "$stringValue",
    };


    response = await http.put(url,
        headers: headers,
        body:jsonEncode(instance.toJson()));

    if (response.statusCode == 200) {
      print("successfully created ");
      print(response.body);

      return response;

    } else {
      print(response.body);
      throw Exception('Failed to create');
    }
  }



}





