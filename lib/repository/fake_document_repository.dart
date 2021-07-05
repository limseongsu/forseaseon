import 'package:flutter/material.dart';
import 'package:forseason/model/document_input_medel.dart';
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
          'https://image.edaily.co.kr/images/photo/files/NP/S/2020/09/PS20090500039.jpg'),
      false,
      TimeOfDay.minutesPerHour,
      123,
      123);

  List<Document> makeDocuments() {
    List<Document> result = [
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
    return result;
  }
}
