import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forseason/model/user_model.dart';
import 'package:forseason/repository/fake_document_repository.dart';
import 'package:forseason/view/drawer/my_drawer.dart';
import 'main_page_recomended.dart';
import 'main_page_resent.dart';
import 'main_page_tool_bar.dart';
import 'items/search.dart';
import 'mian_page_top_topic.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final _dropList = ['spring', 'summer', 'autumn', 'winter'];
  var _dropSelect = 'spring';

  @override
  Widget build(BuildContext context) {
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  FakeDocumentRepository repository =FakeDocumentRepository();
    return Scaffold(
      drawer: MyDrawer(repository.document.user),
      appBar: buildAppBar(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add, color: Colors.black,),
        backgroundColor: Color(0xFFF4DCDB),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainToolBar(_dropList, _dropSelect),
              Row(
                children: [
                  SizedBox(width: 4,),
                  Text(
                    'Recommended',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              RecommendedCards(repository.document),
              MainPageTopTopic(repository.document),
              MainPageResent(repository.document),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.5,
      backgroundColor: Color(0xffFEE4E3),
      title: Text(
        'FOR : SEASON',
        style: TextStyle(fontSize: 25, color: Colors.black),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              showSearch(context: context, delegate: Search(_dropList));
            });
          },
          icon: Icon(Icons.search),
          color: Colors.grey,
        )
      ],
    );
  }
}







