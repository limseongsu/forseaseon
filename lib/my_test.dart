import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forseason/view/drawer/my_drawer.dart';

import 'model/user_model.dart';

class MyTest extends StatefulWidget {
  const MyTest({Key? key}) : super(key: key);

  @override
  _MyTestState createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    User user = User('최준호', 'wnsghqwe@naver.com',
        'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg',
        30, 5, '안녕하세요');

    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(

        ),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('For : Seasons'),
          ),
          drawer: MyDrawer(user),
          body: Container(
          ),
        )
    );
  }


}