import 'package:flutter/material.dart';
import 'package:untitled/MyDrawer.dart';
import 'package:untitled/UserInfo.dart';
import 'package:untitled/DiseaseInfo.dart';

class RelatedDisease extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('연관된 질병'),
        elevation: 0.0,
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: Text(di.relatedDisease[selectedDisease]),
          ),
        ],
      ),
    );
  }
}
