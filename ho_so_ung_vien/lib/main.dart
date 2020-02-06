import 'package:flutter/material.dart';
import 'package:ho_so_ung_vien/Dang_Ky.dart';
import 'package:ho_so_ung_vien/Login.dart';
import 'package:ho_so_ung_vien/Tong_Quan_Ho_So.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'myapp',
      home: Ho_So(),
    );
  }
}

