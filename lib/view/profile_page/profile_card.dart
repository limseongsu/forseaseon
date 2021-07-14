import 'package:flutter/material.dart';
import 'package:forseason/model/document_model.dart';

import '../main_page/items/recommended_card.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard(this.documents);

  final List<Document> documents;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          child: Text('내 글 목록',
            style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold
            ),),
          alignment: Alignment.centerLeft,),
        SizedBox(
          height: 8.0,
        ),
        Container(
          width: 500,
          height: 400,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3.5 / 3.3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 5,
            ),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return RecommendedCard(documents[index]);
            },
          ),
        ),
      ],
    );
  }

}