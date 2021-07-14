import 'package:forseason/model/document_model.dart';
import 'package:forseason/repository/repository.dart';


class FirebaseDocumentRepository extends Repository<Document> {
//
// final docRef = FirebaseFirestore
//     .instance
//     .collection('document')
//     .withConverter(
//     fromFirestore: (snapshot, _) => Document.fromJson(snapshot.data()),
//     toFirestore: (document, _) => document.toJson();



  @override
  void add(Document item) {
    // docRef.add(item);
  }

  @override
  List<Document> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }
}



