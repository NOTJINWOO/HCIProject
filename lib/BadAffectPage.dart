import 'package:flutter/material.dart';
import 'package:untitled/MyDrawer.dart';
import 'package:untitled/DiseaseInfo.dart';
import 'package:untitled/UserInfo.dart';

class BadAffectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('악영향'),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: MyDrawer(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 300,
            child: Text(di.badAffect[selectedDisease])
            ),
        ],
      ),
    );
  }
}
