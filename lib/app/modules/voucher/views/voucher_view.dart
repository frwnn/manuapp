import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/voucher_controller.dart';

class VoucherView extends GetView<VoucherController> {
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    final col = FirebaseFirestore.instance
        .collection('users')
        .doc(user?.uid)
        .collection('name');
    return Scaffold(
      appBar: AppBar(
        title: Text('VoucherView'),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('users').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          return ListView.builder(
            itemCount: streamSnapshot.data?.docs.length,
            itemBuilder: (ctx, index) =>
                Text(streamSnapshot.data?.docs[index]['name']),
          );
        },
      ),
    );
  }
}
