import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/saran_admin_controller.dart';

class SaranAdminView extends GetView<SaranAdminController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saran Admin'),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot<Object?>>(
          stream: controller.streamData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              var listAlldoc = snapshot.data!.docs;
              return ListView.builder(
                itemCount: listAlldoc.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () => {},
                  title: Text(
                      '${(listAlldoc[index].data() as Map<String, dynamic>)["saran"]}'),
                  subtitle: Text(
                      '${(listAlldoc[index].data() as Map<String, dynamic>)["time"]}'),
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
