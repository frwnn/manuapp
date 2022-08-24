import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class OrderAdminController extends GetxController {
  //TODO: Implement OrderAdminController

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Object?>> getData(String docID) async {
    DocumentReference docRef = firestore.collection("order").doc(docID);
    return docRef.get();
  }

  // Future<QuerySnapshot<Object?>> getData() async {
  //   CollectionReference orders = firestore.collection("order");
  //   return orders.get();
  // }

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference orders = firestore.collection("order");
    return orders.snapshots();
  }

  void editStatus(String docID) async {
    DocumentReference docData = firestore.collection("order").doc(docID);

    try {
      await docData.update({"status": 'Selesai'});

      Get.defaultDialog(
          title: "Berhasil",
          middleText: "Berhasil mengubah status",
          onConfirm: () {
            Get.back();
            Get.back();
          },
          textConfirm: "Ok");
    } catch (e) {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Gagal mengubah promosi",
      );
    }
  }
}
