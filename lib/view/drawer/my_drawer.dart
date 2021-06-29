import 'package:flutter/material.dart';
import 'package:forseason/model/user_model.dart';
import 'package:forseason/repository/provider.dart';
import 'package:forseason/view/document/document_page.dart';
import 'package:forseason/view/history_page/history_page.dart';
import 'package:forseason/view/main_page/main_page.dart';
import 'package:forseason/view/profile_page/profile_page.dart';
import 'package:provider/provider.dart';
import 'drawerhead.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer(this.user);

  final User user;

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final myProvider = context.watch<MyProvider>();

    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: Color(0xFFF4DCDB)),
        child: ListView(
          shrinkWrap: true,
          children: [
            NewWidget(user: widget.user),
            makeTiles(myProvider, 0, Icons.vertical_split_outlined, 'For : Seasons', MainPage()),
            makeTiles(myProvider, 1, Icons.account_circle_outlined, '프로필', MyProfilePge(widget.user)),
            makeTiles(myProvider, 2, Icons.emoji_people_rounded, '여행기록', MyHistoryPage(widget.user)),
            makeTiles(myProvider, 3, Icons.people_alt_rounded, '커뮤니티', MyDocumentPage(widget.user)),
            makeTiles(myProvider, 4, Icons.settings_outlined, '세팅', MyDrawer(widget.user)),
          ],
        ),
      ),
    );
  }

  ListTile makeTiles(
      MyProvider myProvider, int index, IconData icon, String title, [Widget? page]) {
    return ListTile(
      //TODO 위젯으로 만들어 코드 줄이기
      leading: Icon(
        icon,
        color: myProvider.selected == index ? Color(0xFFE00503) : Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: myProvider.selected == index
                ? Color(0xFFE00503)
                : Colors.black),
      ),
      selected: myProvider.selected == index,
      selectedTileColor: Color(0xFFF3C0C0),
      onTap: () {
        setState(() {
          myProvider.select(index);
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => page!));
        });
      },
    );
  }
}
