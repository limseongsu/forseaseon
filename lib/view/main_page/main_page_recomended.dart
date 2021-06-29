import 'package:flutter/material.dart';

import 'items/top_card.dart';

class RecommendedCards extends StatelessWidget {
  const RecommendedCards({
    Key? key,
    required this.imgList,
  }) : super(key: key);

  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 4,),
            Text(
              'Recommended',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
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
            itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index) {
              return TopCard(imgList[index]);
            },
          ),
        ),
      ],
    );
  }
}