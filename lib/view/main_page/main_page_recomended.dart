import 'package:flutter/material.dart';
import 'package:forseason/model/document_model.dart';

import 'items/recommended_card.dart';

class RecommendedCards extends StatelessWidget {
  RecommendedCards(this.documents);

  final List<Document> documents;

  @override
  Widget build(BuildContext context) {
    //여기에 도큐먼트 리스트 넣기
    return Column(
      children: [
        Container(
          width: 500,
          height: 220,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3.5 / 3.1,
              crossAxisSpacing: 20,
              mainAxisSpacing: 5,
            ),
            itemCount: documents.length,
            itemBuilder: (BuildContext context, int index) {
              return RecommendedCard(documents[index]);
            },
          ),
        ),
      ],
    );
  }

}