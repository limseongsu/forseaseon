import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MiddleCard extends StatefulWidget {
  @override
  _MiddleCardState createState() => _MiddleCardState();

  MiddleCard(this.image);

  final String image;
}

class _MiddleCardState extends State<MiddleCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                flex: 4,
                child: Container(
                  height: 250,
                  child: Image.network(widget.image,fit: BoxFit.cover),
                )),
            SizedBox(height: 10),
            Flexible(
              flex: 1,
                child: Text('Example')),
            Padding(
              padding: const EdgeInsets.only(top: 28.0, bottom: 1),
              child: Text('someone'),
            ),
            Text('Level',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12)),
          ],
        ));
  }
}
