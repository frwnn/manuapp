import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:manuapp/app/modules/cart/views/cart_view.dart';
import 'package:intl/intl.dart';

class KritikSaranController extends GetxController {
  late TextEditingController saranC;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addSaran(String saran) async {
    CollectionReference sarans = firestore.collection("saran");

    try {
      DateTime dateNow = DateTime.now();
      String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(dateNow);
      await sarans.add({"saran": saran, "time": formattedDate});

      Get.defaultDialog(
          title: "Berhasil",
          middleText: "Terima Kasih atas Masukannya",
          onConfirm: () {
            saranC.clear();
            Get.back();
            Get.back();
            Get.back();
            Get.back();
          },
          textConfirm: "Ok");
    } catch (e) {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Gagal",
      );
    }
  }

  @override
  void onInit() {
    saranC = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    saranC.dispose();
    super.onClose();
  }
}
