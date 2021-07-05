import 'package:flutter/material.dart';
import 'package:forseason/model/document_model.dart';
import 'package:forseason/util/make_star_rating.dart';

class TopCard extends StatefulWidget {
  @override
  _TopCardState createState() => _TopCardState();

  TopCard(this.document);

  final Document document;
}

class _TopCardState extends State<TopCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            child: Image.network(
              widget.document.document.photo,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(widget.document.document.title),
          Expanded(child: Container()),
          Text(
            'Forseason Tip',
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              MakeStarRating(),
              SizedBox(
                width: 4,
              ),
              Text(
                widget.document.favoriteCount.toString(),
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 9),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
