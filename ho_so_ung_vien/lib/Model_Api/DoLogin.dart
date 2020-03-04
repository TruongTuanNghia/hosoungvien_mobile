import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import '../Url_Api.dart';
import 'package:ho_so_ung_vien/Dang_Ky.dart';
import 'package:flutter/material.dart';
class DoLogin {
  String usname;
  String upass;
  int returncode;
  String returnMessage;
  Data data;

  DoLogin({this.upass, this.usname,this.returncode,this.returnMessage, this.data});

  factory DoLogin.fromJson(Map<String, dynamic> json) {
    return DoLogin(
        upass: json["usname"],
        usname: json["upass"],
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
    final response = await client.post(Url_DoLogin, body: para);
    if (response.statusCode == 200) {
     final responseBody = await json.decode(response.body);
     return DoLogin.fromJson(responseBody);
    } else
      throw Exception("Dang nhap that bai");
  }

