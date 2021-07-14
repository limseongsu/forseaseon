import 'package:flutter/material.dart';
import 'package:forseason/model/user_model.dart';
import 'package:forseason/view_model/document_view_model.dart';
import 'package:provider/provider.dart';
import 'package:forseason/view/document_page/make_comunity_card.dart';

class CommunityTab extends StatelessWidget {
  CommunityTab(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {

    final controller = ScrollController();

    final documents = context.read<DocumentViewModel>().repository.getAll();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(

        child: Container(
          child: ListView.builder(
              shrinkWrap: true,
              controller: controller,
              itemCount: documents.length,
              itemBuilder: (BuildContext context, int index) {
                return makeCommunityItem(user, context, documents[index]);
              },
              ),
        ),
      ),
    );
  }
}