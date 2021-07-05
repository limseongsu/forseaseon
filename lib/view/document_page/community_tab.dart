import 'package:flutter/material.dart';
import 'package:forseason/model/user_model.dart';
import 'package:forseason/util/make_comunity_card.dart';

class CommunityTab extends StatelessWidget {
  CommunityTab(this.user);

  final User user;

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(

        child: Container(
          child: ListView(
              shrinkWrap: true,
              controller: controller,
              children: [
            makeCommunityItem(user, context),
            makeCommunityItem(user, context),
            makeCommunityItem(user, context),
            makeCommunityItem(user, context),
            makeCommunityItem(user, context),
            makeCommunityItem(user, context),
            makeCommunityItem(user, context),
            makeCommunityItem(user, context),
            makeCommunityItem(user, context),
            makeCommunityItem(user, context),
            makeCommunityItem(user, context),
          ]),
        ),
      ),
    );
  }
}