import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../../../routes/app_pages.dart';
import '../controllers/promosiadmin_controller.dart';

class PromosiadminView extends GetView<PromosiadminController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promosi Admin'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => authC.logout(),
            icon: Icon(Icons.logout),
            color: Colors.black,
          )
        ],
      ),
      body: StreamBuilder<QuerySnapshot<Object?>>(
          stream: controller.streamData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              var listPromdoc = snapshot.data!.docs;
              return ListView.builder(
                itemCount: listPromdoc.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () => Get.toNamed(Routes.EDIT_PROMOSI,
                      arguments: listPromdoc[index].id),
                  title: Text(
                      '${(listPromdoc[index].data() as Map<String, dynamic>)["name"]}'),
                  subtitle: Text(
                      '${(listPromdoc[index].data() as Map<String, dynamic>)["snk"]}'),
                  trailing: IconButton(
                      onPressed: () =>
                          controller.deletePromosi(listPromdoc[index].id),
                      icon: Icon(Icons.delete)),
                ),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_PROMOSI),
        child: Icon(Icons.add),
      ),
    );
  }
}
