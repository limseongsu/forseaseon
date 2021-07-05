import 'package:flutter/material.dart';
import 'package:forseason/model/user_model.dart';
import 'package:forseason/view/main_page/main_page_recomended.dart';
import 'package:forseason/view_model/document_view_model.dart';
import 'package:provider/provider.dart';

class ProfileMyInfo extends StatelessWidget {
  const ProfileMyInfo({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {

    final repository = context.read<DocumentViewModel>().repository;

    ScrollController controller = ScrollController();

    return Column(
      children: [
        SizedBox(
          height: 8.0,
        ),
        Center(
            child: Text(
          user.name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )),
        SizedBox(
          height: 8.0,
        ),
        Divider(
          thickness: 0.5,
          color: Colors.black,
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Text(
                  'Name',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                )),
            Expanded(
                flex: 7,
                child: Text(
                  user.name,
                  style: TextStyle(fontSize: 11),
                )),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Text(
                  'Email',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                )),
            Expanded(
                flex: 7,
                child: Text(
                  user.email,
                  style: TextStyle(fontSize: 11),
                )),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Text(
                  'Comment',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                )),
            Expanded(
                flex: 7,
                child: Text(
                  user.coment,
                  style: TextStyle(fontSize: 11),
                )),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Divider(
          color: Colors.black,
          thickness: 0.5,
        ),
        SizedBox(
          height: 8.0,
        ),
      ],
    );
  }
}
