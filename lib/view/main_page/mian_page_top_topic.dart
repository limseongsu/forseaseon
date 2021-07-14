import 'package:flutter/material.dart';
import 'package:forseason/model/document_model.dart';

import 'items/top_topic_card.dart';

class MainPageTopTopic extends StatelessWidget {
  MainPageTopTopic(this.documents);

  final List<Document> documents;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 4,),
            Text(
              'Top Topic',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
            width: 535,
            height: 195,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3.1 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 5,
              ),
              itemCount: documents.length,
              itemBuilder: (BuildContext context, int index) {
                return TopTopicCard(documents[index]);
              },
            )),
      ],
    );
  }

}