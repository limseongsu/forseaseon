import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forseason/model/user_model.dart';
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
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  User user = User('최준호', 'wnsghqwe@naver.com',
      'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg',
      30, 5, '안녕하세요');
    return Scaffold(
      drawer: MyDrawer(user),
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
              RecommendedCards(imgList: imgList),
              MainPageTopTopic(imgList: imgList),
              MainPageResent(imgList: imgList),
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







