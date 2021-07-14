import 'package:flutter/cupertino.dart';
import 'package:forseason/model/document_input_model.dart';
import 'package:forseason/repository/fake_document_input_repository.dart';

class DocumentInputViewModel extends ChangeNotifier {
  DocumentInputViewModel(this.inputRepository);

  FakeDocumentInputRepository inputRepository;

  List<DocumentInput> makeInput() {
    return FakeDocumentInputRepository().getAll();
  }
}