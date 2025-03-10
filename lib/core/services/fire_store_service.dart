import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub/core/services/database_service.dart';

class FireStoreService implements DataBaseService {
  //FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  Future<dynamic> getData(
      {required String path,
      String? docId,
      Map<String, dynamic>? query}) async {
    if (docId != null) {
      var data = await firebaseFirestore.collection(path).doc(docId).get();
      return data.data() as Map<String, dynamic>;
    } else {
      Query<Map<String, dynamic>> data = firebaseFirestore.collection(path);
      if (query != null) {
        if (query['orderBy'] != null) {
          var orderBy = query['orderBy'];
          var desinding = query['descending'];
          data = data.orderBy(orderBy, descending: desinding);
        }
        if (query['limit'] != null) {
          var limit = query['limit'];
          data = data.limit(limit);
        }
      }
      var result = await data.get();
      return result.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? docId}) async {
    if (docId != null) {
      await firebaseFirestore.collection(path).doc(docId).set(data);
    } else {}
  }

  @override
  Future<bool> checkIfDataExists(
      {required String path, required String docId}) async {
    var data = await firebaseFirestore.collection(path).doc(docId).get();
    return data.exists;
  }
}
