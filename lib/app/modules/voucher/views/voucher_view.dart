import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manuapp/app/widget/promosi_card.dart';

import '../controllers/voucher_controller.dart';

class VoucherView extends GetView<VoucherController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Promosi",
          style: TextStyle(fontSize: 29),
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 620,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PromosiCard(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

    // User? user = FirebaseAuth.instance.currentUser;
    // final col = FirebaseFirestore.instance
    //     .collection('users')
    //     .doc(user?.uid)
    //     .collection('name');
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('VoucherView'),
    //     centerTitle: true,
    //   ),
    //   body: StreamBuilder(
    //     stream: FirebaseFirestore.instance.collection('users').snapshots(),
    //     builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
    //       return ListView.builder(
    //         itemCount: streamSnapshot.data?.docs.length,
    //         itemBuilder: (ctx, index) =>
    //             Text(streamSnapshot.data?.docs[index]['name']),
    //       );
    //     },
    //   ),
    // );