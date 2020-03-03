import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Model_Api/Get_Login_All.dart';


class ListLogin extends StatelessWidget {
  final List<Get_All_Login> logins;

  ListLogin({Key key, this.logins}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10.0),
          color: index % 2 == 0 ? Colors.greenAccent : Colors.green,
          child: Column(
            children: <Widget>[
              Text('Status: ${logins[index].statusLG}',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              Text(logins[index].userName!=null?logins[index].userName:'null',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22))
            ],
          ),
        );
      },
      itemCount: logins.length,
    );
  }
}

class Get_All_Login_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Get_All_Login_ScreenState();
  }
}

class _Get_All_Login_ScreenState extends State<Get_All_Login_Screen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("tat ca login"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future:Get_All_Login_Api(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              //print(snapshot.error);
              Text(snapshot.error);
            }
            return snapshot.hasData
                ? ListLogin(logins: snapshot.data)
                : Center(child: CircularProgressIndicator());
          }),
    );
  }
}
