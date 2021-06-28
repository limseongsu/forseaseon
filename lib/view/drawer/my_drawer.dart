import 'package:flutter/material.dart';
import 'package:forseason/model/user_model.dart';
import 'package:forseason/repository/provider.dart';
import 'package:provider/provider.dart';
import 'drawerhead.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer(this.user);

  User user;

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {


    final myProvider = context.watch<MyProvider>();

    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFF4DCDB)
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            NewWidget(user: widget.user),
            ListTile(
              leading: Icon(Icons.account_circle_outlined,
                color: myProvider.selected == 0
                    ? Color(0xFFE00503)
                    : Colors.black,),
              title: Text('프로필',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: myProvider.selected == 0
                        ? Color(0xFFE00503)
                        : Colors.black
                ),
              ),
              selected: myProvider.selected == 0,
              selectedTileColor: Color(0xFFF3C0C0),
              onTap: () {
                setState(() {
                  myProvider.select(0);
                });
              },
            ),
            ListTile( //TODO 위젯으로 만들어 코드 줄이기 
              leading: Icon(Icons.emoji_people_rounded,
                color: myProvider.selected == 1
                    ? Color(0xFFE00503)
                    : Colors.black,),
              title: Text('여행기록',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: myProvider.selected == 1
                        ? Color(0xFFE00503)
                        : Colors.black
                ),),
              selected: myProvider.selected == 1,
              selectedTileColor: Color(0xFFF3C0C0),
              onTap: () {
                setState(() {
                  myProvider.select(1);
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.people_alt_rounded,
                color: myProvider.selected == 2
                    ? Color(0xFFE00503)
                    : Colors.black,),
              title: Text('커뮤니티',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: myProvider.selected == 2
                        ? Color(0xFFE00503)
                        : Colors.black
                ),),
              selected: myProvider.selected == 2,
              selectedTileColor: Color(0xFFF3C0C0),
              onTap: () {
                setState(() {
                  myProvider.select(2);
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined,
                color: myProvider.selected == 3
                    ? Color(0xFFE00503)
                    : Colors.black,),
              title: Text('세팅',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: myProvider.selected == 3
                        ? Color(0xFFE00503)
                        : Colors.black
                ),),
              selected: myProvider.selected == 3,
              selectedTileColor: Color(0xFFF3C0C0),
              onTap: () {
                setState(() {
                  myProvider.select(3);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
