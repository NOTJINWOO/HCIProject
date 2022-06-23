import 'package:flutter/material.dart';
import 'package:untitled/MyDrawer.dart';
import 'package:untitled/UserInfo.dart';
import 'RelatedDisease.dart';
import 'BadAffectPage.dart';
import 'ManagementMethod.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedDisease + ' 상세정보'),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: MyDrawer(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              color: Colors.grey[500],
            ),
            height: 300,
            child: ListTile(
              title: Center(
                child: Text('악영향',
                  style: TextStyle(fontSize: 35),),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder:(context) => BadAffectPage()));
                print('Entering ' + selectedDisease + ' 악영향 page');
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              color: Colors.grey[500],
            ),
            height: 300,
            child: ListTile(
              title: Center(
                child: Text('관리방법',
                  style: TextStyle(fontSize: 35),),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ManagementMethod()));
                print('Entering ' + selectedDisease + ' 관리방법 page');
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              color: Colors.grey[500],
            ),
            height: 300,
            child: ListTile(
              title: Center(
                child: Text('연관된 질병',
                  style: TextStyle(fontSize: 35),),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => RelatedDisease()));
                print('Entering ' + selectedDisease + ' 발전가능한 질병 page');
              },
            ),
          ),
        ],
      ),
    );
  }
}