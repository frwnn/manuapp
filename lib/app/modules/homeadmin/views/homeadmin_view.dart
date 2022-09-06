import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manuapp/app/controllers/auth_controller.dart';

import '../../../routes/app_pages.dart';
import '../controllers/homeadmin_controller.dart';

class HomeadminView extends GetView<HomeadminController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Home Admin', style: TextStyle(color: Colors.black)),
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
              var listAlldoc = snapshot.data!.docs;
              return ListView.builder(
                itemCount: listAlldoc.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    onTap: () => Get.toNamed(Routes.EDIT_PRODUCT,
                        arguments: listAlldoc[index].id),
                    title: Text(
                        '${(listAlldoc[index].data() as Map<String, dynamic>)["name"]}'),
                    subtitle: Text(
                        'Rp.${(listAlldoc[index].data() as Map<String, dynamic>)["price"]}'),
                    trailing: IconButton(
                        onPressed: () =>
                            controller.deleteProduct(listAlldoc[index].id),
                        icon: Icon(Icons.delete)),
                  ),
                ),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_PRODUCT),
        child: Icon(Icons.add),
      ),
    );
  }
}
