import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manuapp/app/widget/cart_products.dart';
import 'package:manuapp/app/widget/cart_total.dart';
import 'package:manuapp/app/widget/custom_appbar.dart';
import 'package:manuapp/app/widget/empty_list.dart';

import '../controllers/cart_controller.dart';

final CartController controller = Get.find();

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: controller.products.length == 0
            ? EmptyList()
            : ListView(children: [CartProducts(), CartTotal()]),
      ),
    );
  }
}
