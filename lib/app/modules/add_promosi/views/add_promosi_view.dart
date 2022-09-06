import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_promosi_controller.dart';

class AddPromosiView extends GetView<AddPromosiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddPromosiView'),
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
              decoration: InputDecoration(labelText: "title promosi"),
            ),
            SizedBox(height: 10),
            TextField(
              textInputAction: TextInputAction.done,
              controller: controller.snkC,
              decoration:
                  InputDecoration(labelText: "Syarat dan ketentuan promosi"),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () => controller.addPromosi(
                    controller.nameC.text, controller.snkC.text),
                child: Text("Add Promosi"))
          ],
        ),
      )),
    );
  }
}
