import 'package:flutter/material.dart';
import 'package:ho_so_ung_vien/Dang_Ky.dart';
import 'package:ho_so_ung_vien/Get_All_Login_Screen.dart';
import 'package:ho_so_ung_vien/Lay_Lai_Tai_Khoan.dart';
import 'package:ho_so_ung_vien/Login_Screen.dart';
import 'package:ho_so_ung_vien/Tong_Quan_Ho_So.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'myapp',
      //home: LoginApp(),
      home: LayLaiTaiKhoan(),
    );
  }
}

