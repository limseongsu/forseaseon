import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:forseason/model/document_model.dart';
import 'package:forseason/util/make_star_rating.dart';

class MiddleCard extends StatefulWidget {
  @override
  _MiddleCardState createState() => _MiddleCardState();

  MiddleCard(this.document);

  final Document document;
}

class _MiddleCardState extends State<MiddleCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            child: Image.network(widget.document.document.photo,
                fit: BoxFit.cover),
          ),
          SizedBox(height: 4.0,),
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.document.document.title,
                style: TextStyle(),
              ),
            ],
          ),),
          Text(widget.document.user.name),
          MakeStarRating(),
        ],
      ),
    ));
  }
}
