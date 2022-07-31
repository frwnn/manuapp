import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_product_controller.dart';

class EditProductView extends GetView<EditProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EditProductView'),
        centerTitle: true,
      ),
      body: FutureBuilder<DocumentSnapshot<Object?>>(
        future: controller.getData(Get.arguments),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var data = snapshot.data!.data() as Map<String, dynamic>;
            controller.nameC.text = data["name"];
            controller.priceC.text = data["price"];
            return Center(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    controller: controller.nameC,
                    autocorrect: false,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(labelText: "title product"),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    textInputAction: TextInputAction.done,
                    controller: controller.priceC,
                    decoration: InputDecoration(labelText: "price product"),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () => controller.editProduct(
                          controller.nameC.text,
                          controller.priceC.text,
                          Get.arguments),
                      child: Text("Edit Product"))
                ],
              ),
            ));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
