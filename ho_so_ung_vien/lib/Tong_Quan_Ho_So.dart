import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Ho_So extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Ho_So_State();
  }
}

class Ho_So_State extends State<Ho_So>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Container _tieu_De = new Container(
      height: 200,
      color: Colors.blueAccent,
      child: Column(
        children: <Widget>[
          Image.asset('images/daidien.jpg',height: 50.0,width: 50.0,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              color: Colors.black12,
            ),
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.only(top: 10),
            height: 70.0,
            width: 300.1,
            child: Column(
              children: <Widget>[
                Text('Truong Tuan Nghia',style: TextStyle(fontSize: 20,color: Colors.white)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Nam'+', ',style: TextStyle(fontSize: 20,color: Colors.white)),
                    Text('20 tuoi',style: TextStyle(fontSize: 20,color: Colors.white))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
    final Container _kinh_Nghiem= new Container(
      height: 170,
      width: 180,
      color: Colors.black12,

    );

    final Container _luong= new Container(
      height: 170,
      width: 180,
      color: Colors.black12,

    );

    final Container _truong_hoc= new Container(
      height: 170,
      width: 180,
      color: Colors.black12,

    );

    final Container _chung_chi= new Container(
      height: 170,
      width: 180,
      color: Colors.black12,

    );
    return Scaffold(
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
                  Column(
                    children:<Widget>[
                      GestureDetector(
                         child: _luong
                      )

                    ]
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,bottom: 10),
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
                  Column(
                      children:<Widget>[
                        GestureDetector(
                          child: _chung_chi,
                        )

                      ]
                  )
                ],
              ),
            ),



          ],

    )
    );
  }
}