import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manuapp/app/controllers/auth_controller.dart';

import '../controllers/order_admin_controller.dart';

class OrderAdminView extends GetView<OrderAdminController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Order Admin',
          style: TextStyle(color: Colors.black),
        ),
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
                    // onTap: () => Get.toNamed(Routes.EDIT_PRODUCT,
                    //     arguments: listAlldoc[index].id),
                    title: Row(
                      children: [
                        Text(
                            '${(listAlldoc[index].data() as Map<String, dynamic>)["product"]}'),
                        Text(
                          '${(listAlldoc[index].data() as Map<String, dynamic>)["status"]}',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                    subtitle: Text(
                        '${(listAlldoc[index].data() as Map<String, dynamic>)["time"]}'),

                    trailing: IconButton(
                        onPressed: () =>
                            controller.editStatus(listAlldoc[index].id),
                        icon: Icon(Icons.check_circle_outline_sharp)),
                  ),
                ),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
