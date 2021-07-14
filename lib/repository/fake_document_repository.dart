import 'package:flutter/material.dart';
import 'package:forseason/model/document_model.dart';
import 'package:forseason/repository/fake_document_input_repository.dart';
import 'package:forseason/repository/fake_user_repository.dart';
import 'package:forseason/repository/repository.dart';

class FakeDocumentRepository extends Repository<Document> {
  @override
  void add(item) {
    // TODO: implement add
  }

  @override
  List<Document> getAll() {
    return documents;
  }

  final List<Document> documents = [
    Document(FakeUserRepository().getUser(), FakeDocumentInputRepository().getAll(),
        false, TimeOfDay.minutesPerHour, 123, 123),
    Document(FakeUserRepository().getUser(), FakeDocumentInputRepository().getAll(),
        false, TimeOfDay.minutesPerHour, 123, 123),
    Document(FakeUserRepository().getUser(), FakeDocumentInputRepository().getAll(),
        false, TimeOfDay.minutesPerHour, 123, 123),
    Document(FakeUserRepository().getUser(), FakeDocumentInputRepository().getAll(),
        false, TimeOfDay.minutesPerHour, 123, 123),
    Document(FakeUserRepository().getUser(), FakeDocumentInputRepository().getAll(),
        false, TimeOfDay.minutesPerHour, 123, 123),
    Document(FakeUserRepository().getUser(), FakeDocumentInputRepository().getAll(),
        false, TimeOfDay.minutesPerHour, 123, 123),
    Document(FakeUserRepository().getUser(), FakeDocumentInputRepository().getAll(),
        false, TimeOfDay.minutesPerHour, 123, 123),
    Document(FakeUserRepository().getUser(), FakeDocumentInputRepository().getAll(),
        false, TimeOfDay.minutesPerHour, 123, 123),
    Document(FakeUserRepository().getUser(), FakeDocumentInputRepository().getAll(),
        false, TimeOfDay.minutesPerHour, 123, 123),
  ];
}
