import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manuapp/app/widget/payment.dart';

import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('PaymentView'),
      //   centerTitle: true,
      // ),
      body: PaymentPage(),
    );
  }
}
