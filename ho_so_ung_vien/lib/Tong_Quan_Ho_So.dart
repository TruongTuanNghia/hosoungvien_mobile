import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ho_So extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Ho_So_State();
  }
}

class Ho_So_State extends State<Ho_So> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Container _tieu_De = new Container(
      height: 200,
      color: Colors.blueAccent,
      child: Column(
        children: <Widget>[
          //Image.asset('images/daidien.jpg',height: 50.0,width: 50.0),
          Image.network(
              'http://thuthuat123.com/uploads/2018/01/27/anh-dai-dien-dep-nhat-1_091630.gif',
              height: 70.0,
              width: 90.0),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.black12,
            ),
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.only(top: 10),
            height: 70.0,
            width: 300.1,
            child: Column(
              children: <Widget>[
                Text('Truong Tuan Nghia',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Nam' + ', ',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    Text('20 tuoi',
                        style: TextStyle(fontSize: 20, color: Colors.white))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
    final Container _kinh_Nghiem = new Container(
      height: 170,
      width: 180,
      color: Colors.black12,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
          Text('Đã từng làm:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text('dfdfdfsghfgdfsfdfgdgf', style: TextStyle(fontSize: 18)),
          Text('Tại ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text('dfdf ', style: TextStyle(fontSize: 18))
        ],
      ),
    );

    final Container _luong = new Container(
      height: 170,
      width: 180,
      color: Colors.black12,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
          Text('Mức lương hiện tại:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text('dfdfdfsghfgdfsfdfgdgf', style: TextStyle(fontSize: 18)),
        ],
      ),
    );

    final Container _truong_hoc = new Container(
      height: 170,
      width: 180,
      color: Colors.black12,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
          Text('Đã từng học tại:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text('dfdfdfsghfgdfsfdfgdgf', style: TextStyle(fontSize: 18)),
        ],
      ),
    );

    final Container _chung_chi = new Container(
      height: 170,
      width: 180,
      color: Colors.black12,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
          Text('Chứng chỉ/CV:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text('dfdfdfsghfgdfsfdfgdgf', style: TextStyle(fontSize: 18)),
        ],
      ),
    );

    final Container _ky_nang_chuyen_mon= new Container(
      height: 150,
      color: Colors.black12,
      margin: EdgeInsets.only(top: 20,left: 15,right: 15),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
       // itemCount: ,
        itemBuilder: (context,index) {
         return Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.adjust,
                    color: Colors.blueAccent,
                    size: 50,
                  ),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Text('Java')),
                ],
              ),
            ],
          );

        }

    )
    );

    final Container _luong_mong_muon = new Container(
      height: 170,
      width: 180,
      color: Colors.black12,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
            Text('Mức lương mông muốn:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text('dfdfdfsghfgdfsfdfgdgf', style: TextStyle(fontSize: 18)),
          Text('Tại ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text('dfdf ', style: TextStyle(fontSize: 18))
        ],
      ),
    );

    final Container _Tinh_chat_cong_viec = new Container(
      height: 170,
      width: 180,
      color: Colors.black12,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
          Text('Tính chất công việc:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text('dfdfdfsghfgdfsfdfgdgf', style: TextStyle(fontSize: 18)),
        ],
      ),
    );

    final Container _Chuc_vu_mong_muon = new Container(
      height: 170,
      width: 180,
      color: Colors.black12,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
          Text('Chức vụ mong muon:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text('dfdfdfsghfgdfsfdfgdgf', style: TextStyle(fontSize: 18)),
        ],
      ),
    );

    final Container _trang_thai_tim_viec = new Container(
      height: 170,
      width: 180,
      color: Colors.black12,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
          Text('Chứng chỉ/CV:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          Text('dfdfdfsghfgdfsfdfgdgf', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          elevation: 0.0,
        ),
        backgroundColor: Colors.white,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            _tieu_De,
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        child: _kinh_Nghiem,
                      )
                    ],
                  ),
                  Column(children: <Widget>[GestureDetector(child: _luong)])
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        child: _truong_hoc,
                      )
                    ],
                  ),
                  Column(children: <Widget>[
                    GestureDetector(
                      child: _chung_chi,
                    )
                  ])
                ],
              ),
            ),
            _ky_nang_chuyen_mon
          ],
        ));
  }
}
