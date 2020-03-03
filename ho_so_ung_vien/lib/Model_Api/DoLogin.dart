import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import '../Url_Api.dart';

class DoLogin {
  String usname;
  String upass;
  int id;
  int status;

  DoLogin({this.upass, this.usname, this.id, this.status});

  factory DoLogin.fromJson(Map<String, dynamic> json) {
    return DoLogin(
        upass: json["usname"],
        usname: json["upass"],
        id: json["id"],
        status: json["status"]);
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

