import 'package:flutter/material.dart';
import 'package:forseason/model/user_model.dart';
import 'package:forseason/view/drawer/my_drawer.dart';
import 'package:timelines/timelines.dart';




class MyHistoryPage extends StatelessWidget {

  MyHistoryPage(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    // FakeDocumentRepository repository = FakeDocumentRepository();

    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('내 여행 기록',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Timeline.tileBuilder(
        // controller: ,
        builder: TimelineTileBuilder.fromStyle(
          contentsAlign: ContentsAlign.alternating,
          contentsBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('Timeline Event $index'),
          ),
          itemCount: 10,
        ),
      ),
      // body: ListView.builder(
      //   itemCount: 10,
      //   itemBuilder: (BuildContext context, int index) {
      //   return ListTile(
      //     leading: CircleAvatar(
      //       radius: 30.0,
      //       backgroundImage: NetworkImage(repository.document.document.photo),
      //     ),
      //   );
      // },),
    );
  }

}
