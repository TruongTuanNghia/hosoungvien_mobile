import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayLaiTaiKhoan extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LayLaiTaiKhoanState();
  }
}

class LayLaiTaiKhoanState extends State<LayLaiTaiKhoan>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final txt_Nhap_So_Dien_hoai= new TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 20),
        hintText: 'Nhap so dien thoai',
          contentPadding: EdgeInsets.only(left: 10),
          border: InputBorder.none,
      ),
      keyboardType: TextInputType.phone,
    );
    final btnLayMatKhau= new RaisedButton(
        onPressed: layMatKhau,
            child: Text('Nhận mã xác thực',style: TextStyle(fontSize: 20,color: Colors.black)),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      color: Colors.lightBlue,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Quên mật khẩu",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 30)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 32,top: 30),
                  child: Text(" Nhấp số điện thoại ",style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold,))
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(100))
                ),
                margin: EdgeInsets.only(left: 10,right: 10,top: 17),
                width: 300,
                child: txt_Nhap_So_Dien_hoai,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text('(Hãy nhập số điện thoại bạn đã đăng ký)',
                    style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 250,
                margin: EdgeInsets.only(top: 10),
                child: btnLayMatKhau,
              )
            ],
          )
        ],
      ),
    );
  }
  void layMatKhau(){

  }
}