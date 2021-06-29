import 'package:flutter/material.dart';

import 'items/middle_card.dart';

class MainPageResent extends StatelessWidget {
  const MainPageResent({
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
              'Resent',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 5,
          ),
          itemCount: imgList.length,
          itemBuilder: (BuildContext context, int index) {
            return MiddleCard(imgList[index]);
          },
        ),
      ],
    );
  }
}