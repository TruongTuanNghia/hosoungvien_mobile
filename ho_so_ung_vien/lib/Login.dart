import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  void _Dang_Nhap() {}
  bool _iconshow = true;
  var _sai_TDN='So dien thoai khong chinh xac';
  var _sai_MK='Mat khau khong dung';

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
          hintText: 'Nhập số điện thoạii',
          errorText: _sai_TDN,
          hintStyle: TextStyle(fontSize: 20),
          prefixIcon: Icon(Icons.phone),
          border: InputBorder.none),
      keyboardType: TextInputType.number,
    );

    final _txt_Ten_Mat_Khau = new TextField(
      decoration: InputDecoration(
          hintText: 'Nhập mật khẩu',
          errorText: _sai_MK,
          hintStyle: TextStyle(fontSize: 20),
          prefixIcon: Icon(Icons.dialpad),
          border: InputBorder.none,
          suffixIcon: IconButton(
              icon: Icon(Icons.remove_red_eye), onPressed: _hien_thi_pass)),
      keyboardType: TextInputType.text,
      obscureText: _iconshow,
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
      appBar: AppBar(
        title: Text(
          'Đăng nhập',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22),
        ),
        centerTitle: true,
      ),
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
                child: _txt_Ten_Mat_Khau),
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
                  Text('Bạn chưa có tài khoản?',style: TextStyle(fontSize: 17)),
                  GestureDetector(child: Text(" Đăng ký",style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
