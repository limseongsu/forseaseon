
import 'document_input_model.dart';
import 'user_model.dart';

class Document {
  User? user;
  List<DocumentInput>? documentInput;
  bool? bookmark;
  int? dateTime;
  int? favoriteCount;
  int? visitorCount;

  Document(
    this.user,
    this.documentInput,
    this.bookmark,
    this.dateTime,
    this.favoriteCount,
    this.visitorCount);

  Document.fromJson(dynamic json) {
    user = json["user"] != null ? User.fromJson(json["user"]) : null;
    if (json["documentInput"] != null) {
      documentInput = [];
      json["documentInput"].forEach((v) {
        documentInput!.add(DocumentInput.fromJson(v));
      });
    }
    bookmark = json["bookmark"];
    dateTime = json["dateTime"];
    favoriteCount = json["favoriteCount"];
    visitorCount = json["visitorCount"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (user != null) {
      map["user"] = user!.toJson();
    }
    if (documentInput != null) {
      map["documentInput"] = documentInput!.map((v) => v.toJson()).toList();
    }
    map["bookmark"] = bookmark;
    map["dateTime"] = dateTime;
    map["favoriteCount"] = favoriteCount;
    map["visitorCount"] = visitorCount;
    return map;
  }

}