import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditPromosiController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController snkC;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Object?>> getData(String docID) async {
    DocumentReference docRef = firestore.collection("promosi").doc(docID);
    return docRef.get();
  }

  void editProduct(String name, String snk, String docID) async {
    DocumentReference docData = firestore.collection("promosi").doc(docID);

    try {
      await docData.update({"name": name, "snk": snk});

      Get.defaultDialog(
          title: "Berhasil",
          middleText: "Berhasil mengubah prmosi",
          onConfirm: () {
            nameC.clear();
            snkC.clear();
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

  @override
  void onInit() {
    nameC = TextEditingController();
    snkC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    nameC.dispose();
    snkC.dispose();
    super.onClose();
  }
}
