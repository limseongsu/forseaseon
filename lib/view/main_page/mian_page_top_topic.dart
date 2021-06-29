import 'package:flutter/material.dart';

import 'items/middle_card.dart';

class MainPageTopTopic extends StatelessWidget {
  const MainPageTopTopic({
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
              itemCount: imgList.length,
              itemBuilder: (BuildContext context, int index) {
                return MiddleCard(imgList[index]);
              },
            )),
      ],
    );
  }
}