import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class PromosiadminController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference products = firestore.collection("promosi");
    return products.get();
  }

  Stream<QuerySnapshot<Object?>> streamData() {
    CollectionReference products = firestore.collection("promosi");
    return products.snapshots();
  }

  void deletePromosi(String docID) {
    DocumentReference docRef = firestore.collection("promosi").doc(docID);
    try {
      Get.defaultDialog(
          title: "Hapus Promosi",
          middleText: "Apakah anda yakin menghapus promosi?",
          onConfirm: () async {
            await docRef.delete();
            Get.back();
          },
          textConfirm: "Ya",
          textCancel: "Tidak");
    } catch (e) {
      Get.defaultDialog(
          title: "Terjadi Kesalahan", middleText: "Gagal menghapus promosi");
    }
  }
}
