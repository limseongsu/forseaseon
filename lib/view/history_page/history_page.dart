import 'package:flutter/material.dart';
import 'package:forseason/model/user_model.dart';
import 'package:forseason/view/drawer/my_drawer.dart';

class MyHistoryPage extends StatelessWidget {
  MyHistoryPage(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(user),
      appBar: AppBar(
        centerTitle: true,
        title: Text('내 여행 기록',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(user.profileUrl), // TODO 도큐먼트 만들고 메인 사진 넣기
          ),
        );
      },),
    );
  }

}
