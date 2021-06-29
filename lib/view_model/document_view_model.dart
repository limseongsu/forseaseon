import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forseason/model/document_model.dart';
import 'package:forseason/repository/fake_document_repository.dart';

class DocumentViewModel extends ChangeNotifier {
  DocumentViewModel(this.repository);

  final FakeDocumentRepository repository;

  List<Document> makeItems() {
    return repository.makeDocuments();
  }
}
