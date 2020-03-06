import 'package:flutter/material.dart';
import 'package:ho_so_ung_vien/Login_Screen.dart';

class Dang_Ky extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Dang_Ky_State();
  }
}

class Dang_Ky_State extends State<Dang_Ky>{
  @override
  bool _showpass=true;
  bool _showpassretype=true;
  bool _checkBox_false=false;

  TextEditingController _txtTen_Dang_Ky_Contr= new TextEditingController();
  TextEditingController _txtMat_Khau_Dang_Ky_Contr= new TextEditingController();
  TextEditingController _txt_hap_Lai_Mat_Khau_Dang_Ky_Contr= new TextEditingController();
  
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
controller: _txtTen_Dang_Ky_Contr,
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
      controller: _txtMat_Khau_Dang_Ky_Contr,

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
      controller: _txt_hap_Lai_Mat_Khau_Dang_Ky_Contr,
      obscureText: _showpassretype ,

    );
    final _cb_Dieu_Khoan = new Checkbox(value: _checkBox_false, onChanged: (_checkBox_true){
      setState(() {
        _checkBox_false=_checkBox_true;
      });
    } );


    final _btnDang_Ky = new FlatButton(onPressed: _Dang_Ky, child: Text('Đăng ký',style: TextStyle(fontSize: 22))
      ,color: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))));
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                child: _txt_hap_Lai_Mat_Khau_Dang_Ky),
            Container(
                margin: EdgeInsets.only(top: 60),
                child: Row(
                  children: <Widget>[
                    _cb_Dieu_Khoan,
                    Flexible(
                      child:
                        Text('Bằng cách nhấn vào Đăng ký, bạn đồng ý với Điều khoản và chính sách bảo mật của chúng tôi.',
                          style: TextStyle(fontSize: 15,color: Colors.black),),
                    ),
                  ],
                )
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 160,
                height: 40,
                child: _btnDang_Ky,
              )
            )
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

  void _Dang_Ky(){
    setState(() {
      if(_txtTen_Dang_Ky_Contr.text.length<9||_txtTen_Dang_Ky_Contr.text.length>10)
        (
          showDialog(context: context,
          builder: (BuildContext) {
            return AlertDialog(
              title: Text('Thông báo'),
              content: Text('Số điện thoại không chính xác'),
              actions: <Widget>[
                FlatButton(onPressed: () async {
                  await Navigator.pop(context);
                }, child: Text('OK'))
              ],
            );
          } )
        );
else
      if (_txtMat_Khau_Dang_Ky_Contr.text.length < 8)
        (showDialog(
            context: context,
            builder: (BuildContext) {
              return AlertDialog(
                title: Text('Thong bao'),
                content: Text('Mat khau phải lớn hơn 8 ký tự'),
                actions: <Widget>[
                  FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('OK'))
                ],
              );
            })
        );
else
      if (_txtMat_Khau_Dang_Ky_Contr.text!=_txt_hap_Lai_Mat_Khau_Dang_Ky_Contr.text)
        (showDialog(
            context: context,
            builder: (BuildContext) {
              return AlertDialog(
                title: Text('Thong bao'),
                content: Text('Mat khau nhập lại không trùng với mật khẩu'),
                actions: <Widget>[
                  FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('OK'))
                ],
              );
            })
        );
      else
      if(_checkBox_false==false)
            (showDialog(
                context: context,
                builder: (BuildContext) {
                  return AlertDialog(
                    title: Text('Thong bao'),
                    content: Text('Bạn chưa đồng ý với Điều khoản'),
                    actions: <Widget>[
                      FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'))
                    ],
                  );
                })
        );
      else
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginApp()));
    });
  }
}