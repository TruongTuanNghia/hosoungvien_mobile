import 'package:flutter/material.dart';
import 'package:ho_so_ung_vien/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'myapp',
      home: LoginApp(),
    );
  }
}

