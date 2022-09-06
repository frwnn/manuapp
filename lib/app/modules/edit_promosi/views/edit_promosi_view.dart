import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_promosi_controller.dart';

class EditPromosiView extends GetView<EditPromosiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EditPromosiView'),
        centerTitle: true,
      ),
      body: FutureBuilder<DocumentSnapshot<Object?>>(
        future: controller.getData(Get.arguments),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var data = snapshot.data!.data() as Map<String, dynamic>;
            controller.nameC.text = data["name"];
            controller.snkC.text = data["snk"];
            return Center(
                child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    controller: controller.nameC,
                    autocorrect: false,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(labelText: "title promosi"),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    textInputAction: TextInputAction.done,
                    controller: controller.snkC,
                    decoration: InputDecoration(
                        labelText: "Syarat dan ketentuan promosi"),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () => controller.editProduct(
                          controller.nameC.text,
                          controller.snkC.text,
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
