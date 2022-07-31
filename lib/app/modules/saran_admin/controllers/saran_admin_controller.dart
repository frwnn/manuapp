import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class SaranAdminController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference sarans = firestore.collection("saran");
    return sarans.get();
  }

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference sarans = firestore.collection("saran");
    return sarans.snapshots();
  }
}
