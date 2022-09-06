import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddPromosiController extends GetxController {
  late TextEditingController nameC;
  late TextEditingController snkC;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addPromosi(String name, String snk) async {
    CollectionReference products = firestore.collection("promosi");

    try {
      String dateNow = DateTime.now().toIso8601String();
      await products.add({"name": name, "snk": snk, "time": dateNow});

      Get.defaultDialog(
          title: "Berhasil",
          middleText: "Berhasil menambahkan promosi",
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
        middleText: "Gagal menambahkan promosi",
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
