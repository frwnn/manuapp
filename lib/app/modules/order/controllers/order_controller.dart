import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference orders = firestore.collection("order");
    return orders.get();
  }

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference orders = firestore.collection("order");
    return orders.snapshots();
  }
}
