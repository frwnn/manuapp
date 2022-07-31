import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kritik_saran_controller.dart';

class KritikSaranView extends GetView<KritikSaranController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KritikSaranView'),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: controller.saranC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "kritik dan saran"),
            ),
            SizedBox(height: 10),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () => controller.addSaran(controller.saranC.text),
                child: Text("Submit"))
          ],
        ),
      )),
    );
  }
}
