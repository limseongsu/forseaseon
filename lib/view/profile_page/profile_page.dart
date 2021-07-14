import 'package:flutter/material.dart';
import 'package:forseason/model/user_model.dart';
import 'package:forseason/view/drawer/my_drawer.dart';
import 'package:forseason/view/profile_page/profile_card.dart';
import 'package:forseason/view/profile_page/profile_image.dart';
import 'package:forseason/view/profile_page/profile_my_info.dart';
import 'package:forseason/view_model/document_view_model.dart';
import 'package:provider/provider.dart';

class MyProfilePge extends StatelessWidget {
  MyProfilePge(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
  final documents = context.read<DocumentViewModel>().repository.getAll();
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '프로필',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProfilImage(user: user),
              ProfileMyInfo(user: user),
              ProfileCard(documents)
            ],
          ),
        ),
      ),
    );
  }
}




