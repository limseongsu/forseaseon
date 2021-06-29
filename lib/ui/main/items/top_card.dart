import 'package:flutter/material.dart';

class TopCard extends StatefulWidget {
  @override
  _TopCardState createState() => _TopCardState();

  TopCard(this.image);

  final String image;
}

class _TopCardState extends State<TopCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
            flex: 4,
            child: Container(
              width: 200,
              child: Image.network(widget.image,fit: BoxFit.cover,),
            )),
        Flexible(child: Text('Example')),
        SizedBox(height: 15),
        Text('Forseason'),
        Text('Tip',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12)),
        SizedBox(height: 5),
        Row(
          children: [
            Text('★★★★★',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 11)),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text('12345',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 9),),
            ),
          ],
        )
      ],
    ));
  }
}
