import 'package:flutter/material.dart';
import 'package:forseason/model/document_input.dart';
import 'package:forseason/model/document_model.dart';
import 'package:forseason/repository/repository.dart';
import 'package:forseason/view_model/user_view_medel.dart';

class FakeDocumentRepository extends Repository<Document> {
  @override
  void add(Document item) {
    // TODO: implement add
  }

  @override
  List<Document> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  final Document document = Document(
      UserViewModel().user,
      DocumentInput('제목', 'text', '안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 \n안녕하세요 ',
          'https://lh3.googleusercontent.com/proxy/GLxVv42iyh88I7KfaRWAERZYXZUl4V0OU_t9lWa5SfQNdb_LYi9fKqD-qaBNIBgXbnXhfjbCmZbmD6wWVHWk6cJ9IWQnvl7vhXISkO9QtxFruOk'),
      false,
      TimeOfDay.minutesPerHour,
      123,
      123);

  List<Document> makeDocuments() {
    List<Document> reselt = [
      document,
      document,
      document,
      document,
      document,
      document,
      document,
      document,
      document,
      document,
      document,
    ];
    return reselt;
  }
}
