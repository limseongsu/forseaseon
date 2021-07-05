import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forseason/model/user_model.dart';
import 'package:forseason/repository/fake_document_repository.dart';
import 'package:forseason/view/drawer/my_drawer.dart';

class CommunityDetailPage extends StatelessWidget {

  CommunityDetailPage(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();
    FakeDocumentRepository repository = FakeDocumentRepository();
    return Scaffold(
        drawer: MyDrawer(repository.document.user),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '커뮤니티',
            style:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Container(
          margin: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(backgroundImage: NetworkImage(user.profileUrl),),
                  SizedBox(width: 16,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('제목',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('이름', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500), textAlign: TextAlign.end,),
                          SizedBox(width: 4,),
                          Text('시간', style: TextStyle(fontSize: 8), textAlign: TextAlign.center,),
                          SizedBox(width: 4,),
                          Icon(Icons.star, size: 12,),
                          SizedBox(width: 4,),
                          Text('123', style: TextStyle(fontSize: 10),),
                          SizedBox(width: 4,),
                          Text('Lv', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                          SizedBox(width: 4,),
                          Text('123', style: TextStyle(fontSize: 10),)
                        ],
                      ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  IconButton(icon: Icon(Icons.share, color: Colors.grey), onPressed: () {}),
                  IconButton(icon: Icon(Icons.bookmark, color: Colors.grey), onPressed: () {}),
                ],
              ),
              SizedBox(height: 8,),
              Divider(color: Colors.blueGrey,),
              SizedBox(height: 8,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(repository.document.document.photo,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 8,),
              Text(repository.document.document.text,
              style: TextStyle(
                height: 2,
                fontSize: 11,
                fontWeight: FontWeight.normal
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
