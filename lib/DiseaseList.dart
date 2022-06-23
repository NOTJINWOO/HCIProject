import 'package:flutter/material.dart';
import 'package:untitled/MyDrawer.dart';
import 'UserInfo.dart';
import 'Details.dart';

User a = new User();

class DiseaseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('고위험 악습관'),
        elevation: 0.0,
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: new List.generate(a.diseaseList.length, (index) => new
        ListTile(
          title: Center(
            child: Text(a.diseaseList[index]),
          ),
          onTap: (){
            selectedDisease = a.diseaseList[index];
            print(selectedDisease + 'is selected');
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => Details()
            ));
          },
        ),
        ),
        ),
    );
  }
}
