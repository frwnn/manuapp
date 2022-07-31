import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manuapp/app/widget/orderhistory.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Riwayat Order",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                OrderHistory(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
