import 'package:flutter/material.dart';
import 'package:untitled/MyDrawer.dart';
import 'package:untitled/UserInfo.dart';
import 'package:untitled/DiseaseInfo.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

class ManagementMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('관리방법'),
        elevation: 0.0,
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: Text(di.managementMethod[selectedDisease]),
          ),
          TextButton(
              onPressed: (){
                FlutterAlarmClock.createTimer(10, title: selectedDisease + " 스트레칭 시간입니다!!");
              },
              child: Text('알람설정하기')
          ),
        ],
      ),
    );
  }
}
