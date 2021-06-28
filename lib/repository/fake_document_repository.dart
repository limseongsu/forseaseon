import 'package:forseason/model/document_model.dart';
import 'package:forseason/repository/repository.dart';

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

}