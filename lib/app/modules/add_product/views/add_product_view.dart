import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddProductView'),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller.nameC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "name product"),
            ),
            SizedBox(height: 10),
            TextField(
              textInputAction: TextInputAction.done,
              controller: controller.priceC,
              decoration: InputDecoration(labelText: "price product"),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () => controller.addProduct(
                    controller.nameC.text, controller.priceC.text),
                child: Text("Add Product"))
          ],
        ),
      )),
    );
  }
}
