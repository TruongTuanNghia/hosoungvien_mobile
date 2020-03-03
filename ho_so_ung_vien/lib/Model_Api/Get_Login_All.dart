import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:async';
import '../Url_Api.dart';

class Get_All_Login
{
  String userName;
  String userPassword;
  int statusLG;
  Get_All_Login({
   this.userName,
   this.userPassword,
    this.statusLG
});
  factory Get_All_Login.fromJson(Map<String, dynamic> json){
    return Get_All_Login(
      userName: json["userName"],
      userPassword: json["userPassword"],
      statusLG: json["statusLG"]
    );
  }
}

  Future<List<Get_All_Login>> Get_All_Login_Api(http.Client client) async{
   final response=await client.get(Url_Get_All_Login);
   if(response.statusCode==200){
     Map<String, dynamic> mapResponse= json.decode(response.body);
     if(mapResponse["Returncode"]==1)
       {
         final Login=mapResponse["Data"].cast<Map<String, dynamic>>();
         final ListLogin=await Login.map<Get_All_Login>((json){
           return Get_All_Login.fromJson(json);
         }).toList();
         return ListLogin;
       }
     else
       {
         return [];
       }
   }
   else
     {
       throw Exception("loi server");
     }
  }
