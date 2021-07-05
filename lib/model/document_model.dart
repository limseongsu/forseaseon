import 'package:forseason/model/document_input_medel.dart';
import 'package:forseason/model/user_model.dart';

class Document {
  User user;
  DocumentInput document;
  bool bookmark;
  int dateTime;
  int favoriteCount;
  int visitorCount;

  Document(this.user, this.document, this.bookmark, this.dateTime,
      this.favoriteCount, this.visitorCount);
}