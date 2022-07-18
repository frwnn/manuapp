import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manuapp/app/models/Product.dart';

class CartController extends GetxController {
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

  get isi => _products.entries.map((product) => product.key.name).toList();
}
