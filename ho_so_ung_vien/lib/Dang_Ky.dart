import 'package:flutter/material.dart';

class Dang_Ky extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Dang_Ky_State();
  }
}

class Dang_Ky_State extends State<Dang_Ky>{
  @override
  bool _showpass=false;
  bool _showpassretype=false;
  Widget build(BuildContext context) {

    final TextField _txtTen_Dang_Ky= new TextField(
        decoration: InputDecoration(
          labelText: 'So dien thoai',
          labelStyle: TextStyle(fontSize: 20),
          prefixIcon: Icon(Icons.add_call),
          hasFloatingPlaceholder: false,
          contentPadding: EdgeInsets.only(bottom: 12),

        ),
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 25),

    );
    final TextField _txtMat_Khau_Dang_Ky= new TextField(
      decoration: InputDecoration(
        labelText: 'Mat khau',
        labelStyle: TextStyle(fontSize: 20),
        prefixIcon: Icon(Icons.dialpad),
        hasFloatingPlaceholder: false,
        contentPadding: EdgeInsets.only(bottom: 12),
        suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye),onPressed: _hien_Mat_Khau,)
      ),
      keyboardType: TextInputType.text,
      style: TextStyle(fontSize: 25),
      obscureText: _showpass ,

    );

    final TextField _txt_hap_Lai_Mat_Khau_Dang_Ky= new TextField(
      decoration: InputDecoration(
        labelText: 'Nhap lai mat khau',
        labelStyle: TextStyle(fontSize: 20),
        prefixIcon: Icon(Icons.dialpad),
        hasFloatingPlaceholder: false,
        contentPadding: EdgeInsets.only(bottom: 12),
          suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye),onPressed: _hien_Mat_Khau_Nhap_Lai,)
      ),
      keyboardType: TextInputType.text,
      style: TextStyle(fontSize: 25),
      obscureText: _showpassretype ,

    );
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Dang ky',style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 12,right: 12,top: 50),
        child: Column(

          children: <Widget>[
            _txtTen_Dang_Ky,
            Container(
                margin: EdgeInsets.only(top: 30),
                child: _txtMat_Khau_Dang_Ky),
            Container(
              margin: EdgeInsets.only(top: 30),
                child: _txt_hap_Lai_Mat_Khau_Dang_Ky)
          ],
        ),
      ),
    );


  }
  void _hien_Mat_Khau(){
    setState(() {
      _showpass=!_showpass;
    });
  }

  void _hien_Mat_Khau_Nhap_Lai(){
    setState(() {
      _showpassretype=!_showpassretype;
    });
  }
}