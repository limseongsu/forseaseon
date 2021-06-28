import 'package:forseason/model/user_model.dart';

class Document {
  User user;
  List<List<String>> document;
  bool bookmark;
  int dateTime;
  int favoriteCount;
  int visitorCount;

  Document(this.user, this.document, this.bookmark, this.dateTime,
      this.favoriteCount, this.visitorCount);
}