import 'package:flutter/material.dart';
import 'package:forseason/model/document_input.dart';
import 'package:forseason/model/document_model.dart';
import 'package:forseason/model/user_model.dart';
import 'package:forseason/view/drawer/my_drawer.dart';
import 'package:forseason/view_model/user_view_medel.dart';

import 'community_tab.dart';

class MyDocumentPage extends StatelessWidget {
  MyDocumentPage(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {

    final Document document = Document(
        UserViewModel().user,
        DocumentInput('제목', 'text', '안녕하세요', ''),
        false,
        TimeOfDay.minutesPerHour,
        123,
        123);

    return DefaultTabController(
        length: 3,
        child: Scaffold(
            drawer: MyDrawer(document.user),
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                '커뮤니티',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              bottom: communicationTabBar(),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {  },
              child: Icon(Icons.add, color: Colors.black,),
              backgroundColor: Color(0xFFF4DCDB),
            ),
            body: TabBarView(
                children: [
              CommunityTab(user),
              CommunityTab(user),
              CommunityTab(user),
            ])));
  }



  TabBar communicationTabBar() {
    return TabBar(indicatorColor: Color(0xFF79C3FF), tabs: [
      Icon(
        Icons.people_alt_rounded,
        color: Colors.grey,
      ),
      Icon(Icons.star, color: Colors.grey),
      Icon(Icons.bookmark, color: Colors.grey),
    ]);
  }
}


