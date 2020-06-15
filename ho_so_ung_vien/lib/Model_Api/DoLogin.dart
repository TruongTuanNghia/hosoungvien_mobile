import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../Url_Api.dart';

class DoLogin {
  //String uname;
  //String upass;
  int returncode;
  String returnMessage;
  Data data;

  DoLogin({this.returncode,this.returnMessage, this.data});

  factory DoLogin.fromJson(Map<String, dynamic> json) {
    return DoLogin(
       // uname : json["uname"],
       // upass: json["upass"],
      returncode: json["returncode"],
      returnMessage: json["returnMessage"],
      data: Data.fromJson(json["Data"])
    );
  }
}
class Data{
  int id;
  int status;
  Data({this.id,this.status});

  factory Data.fromJson(Map<String,dynamic> json){
    return Data(
      id: json["id"],
      status: json["status"]
    );
  }
}
  Future<DoLogin> Login_Api(
      http.Client client, Map<String, dynamic> para) async {
    final response = await client.post(Url_DoLogin,
        //headers: {
       //   HttpHeaders.contentTypeHeader: 'application/json',
       // },
        body: para);
    if (response.statusCode == 200) {
     final responseBody = await json.decode(response.body);
     return DoLogin.fromJson(responseBody);
    } else
      throw Exception("Dang nhap that bai");
  }

