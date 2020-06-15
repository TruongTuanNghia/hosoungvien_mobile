import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ho_so_ung_vien/Dang_Ky.dart';
import 'Model_Api/DoLogin.dart';
import 'package:http/http.dart' as http;

class LoginApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginAppState();
  }
}

class LoginAppState extends State<LoginApp> {
  @override
  // TODO: implement widget

  bool _iconshow = true;
  bool _nhapsai_TDN = false;
  bool _nhapsai_MK = false;
  TextEditingController _txtTen_Dang_Nhap = new TextEditingController();
  TextEditingController _txtMat_Khau = new TextEditingController();
  var _sai_TDN = 'So dien thoai khong chinh xac';
  var _sai_MK = 'Mat khau khong dung';

  Widget build(BuildContext context) {
    void _hien_thi_pass() {
      setState(() {
        _iconshow = !_iconshow;
      });
    }

    final _sizeBox = new SizedBox(
      height: 60,
      child: Container(
        padding: EdgeInsets.only(top: 10),
        alignment: FractionalOffset.center,
        child: Column(
          children: <Widget>[
            Text(
              'Hồ sơ ứng viên',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.red),
            )
          ],
        ),
      ),
    );
    final _txt_Ten_Dang_Nhap = new TextField(
      decoration: InputDecoration(
          hintText: 'Nhập số điện thoại',
          // errorText: _nhapsai_TDN ? _sai_TDN : null,
          hintStyle: TextStyle(fontSize: 20),
          prefixIcon: Icon(Icons.phone),
          border: InputBorder.none),
      keyboardType: TextInputType.number,
      controller: _txtTen_Dang_Nhap,
    );

    final _txt_Mat_Khau = new TextField(
      decoration: InputDecoration(
          hintText: 'Nhập mật khẩu',
          // errorText: _nhapsai_MK ? _sai_MK : null,
          hintStyle: TextStyle(fontSize: 20),
          prefixIcon: Icon(Icons.dialpad),
          border: InputBorder.none,
          suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye), onPressed: _hien_thi_pass)),
      keyboardType: TextInputType.text,
      obscureText: _iconshow,
      controller: _txtMat_Khau,
    );

    final _btn_Dang_Nhap = new RaisedButton(
        onPressed: _Dang_Nhap,
        child: Text(
          'Đăng nhập',
          style: TextStyle(fontSize: 22),
        ),
        color: Colors.blue,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))));

    // TODO: implement build
    return Scaffold(
     resizeToAvoidBottomPadding: false,
      appBar: AppBar(
          title: Text('Đăng nhập',
              textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
          centerTitle: true),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/login.jpg',
              height: 90,
              width: 120,
            ),
            _sizeBox,
            Container(
              margin: EdgeInsets.only(left: 12, right: 12, top: 60),
              decoration: BoxDecoration(
                border: Border.all(width: 1.5),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.black12,
              ),
              height: 50,
              child: _txt_Ten_Dang_Nhap,
            ),
            Container(
                margin: EdgeInsets.only(left: 12, right: 12, top: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.black12,
                ),
                height: 50,
                child: _txt_Mat_Khau),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12, top: 30),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: _btn_Dang_Nhap,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 35),
              child: GestureDetector(
                onTap: null,
                child: Text(
                  'Quên mật khẩu?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Bạn chưa có tài khoản?',
                      style: TextStyle(fontSize: 17)),
                  GestureDetector(
                      child: Text(
                    " Đăng ký",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                    onTap:()=> _SDang_Ky() ,
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
 void Login_Api_para() async{
    Map<String, dynamic> para=Map<String,dynamic>();
    para["uname"]=_txtTen_Dang_Nhap.text.trim();
    para["upass"]=_txtMat_Khau.text.trim();
    await Login_Api(http.Client(),para);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Dang_Ky()));
  }
  void _Dang_Nhap() {
    if (_txtTen_Dang_Nhap.text.length < 9 || _txtTen_Dang_Nhap.text.length > 10)
      (showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            title: Text('Thong bao'),
            content: Text('Sai so dt'),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () async {
                    await Navigator.pop(context);
                  },
                  child: Text('OK'))
            ],
          );
        },
      ));
    else {
      if (_txtMat_Khau.text.length < 8)
        (showDialog(
            context: context,
            builder: (BuildContext) {
              return AlertDialog(
                title: Text('Thong bao'),
                content: Text('Mat khau khong chinh xac'),
                actions: <Widget>[
                  FlatButton(
                      onPressed:() {
                        Navigator.pop(context);
                      },
                      child: Text('OK'))
                ],
              );
            })
        );
      else{
        Login_Api_para();
      }
    }
  }
  void _SDang_Ky(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Dang_Ky()));
  }
}
