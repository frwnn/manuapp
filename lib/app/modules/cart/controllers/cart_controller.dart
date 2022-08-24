import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manuapp/app/models/Product.dart';
import 'package:intl/intl.dart';

class CartController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  var _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar("Product added", "You Have Added ${product.title} to the cart",
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 1),
        backgroundColor: Colors.black,
        colorText: Colors.white);
  }

  get products => _products;

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(0);

  int promosiS(total) {
    if (total >= 30000) {
      return 0;
    } else
      return 5000;
  }

  int totalnih(total, promosiS) {
    return total + promosiS(total);
  }

  get isi => _products.entries.map((product) => product.key.title).toList();

  void addOrder() async {
    CollectionReference order = firestore.collection("order");

    try {
      DateTime dateNow = DateTime.now();
      String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(dateNow);
      await order.add({
        "product": isi,
        "total": total,
        "time": formattedDate,
        "status": 'diproses'
      });
    } catch (e) {
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Gagal menambahkan produk",
      );
    }
  }
}
