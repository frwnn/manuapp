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
          child: Expanded(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(20),
          children: [
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              height: 620,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Riwayat Order",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                  ),
                  OrderHistory()
                ],
              ),
            )),
          ],
        ),
      )),
    );
  }
}
