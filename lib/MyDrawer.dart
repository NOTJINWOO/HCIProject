import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:untitled/DiseaseList.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 200,
            color: Colors.amber[700],
            child: Center(
              child: Text("나쁜 자세 고치기",
                style: TextStyle(fontSize: 35),),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home,
              color: Colors.grey[850],
            ),
            title: Text('메인화면'),
            onTap: (){
              print('Home is clicked');
            },
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.search,
              color: Colors.grey[850],
            ),
            title: Text('자세 목록'),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => DiseaseList()));
              print('Setting is clicked');
            },
          ),
          ListTile(
            leading: Icon(Icons.question_answer,
              color: Colors.grey[850],
            ),
            title: Text('자가진단'),
            onTap: (){
              print('Q&A is clicked');
            },
          ),
          ListTile(
            leading: Icon(Icons.access_alarm,
              color: Colors.grey[850],
            ),
            title: Text('알람 목록'),
            onTap: (){
              FlutterAlarmClock.showTimers();
              print('alarm is clicked');
            },
          ),
        ],
      ),
    );
  }
}
