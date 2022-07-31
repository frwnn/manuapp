import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manuapp/app/widget/payment_success.dart';

import '../controllers/payment_success_controller.dart';

class PaymentSuccessView extends GetView<PaymentSuccessController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('PaymentSuccessView'),
      //   centerTitle: true,
      // ),
      body: PaymentSuccess(),
    );
  }
}
