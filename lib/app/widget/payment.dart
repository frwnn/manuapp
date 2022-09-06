import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manuapp/app/modules/cart/views/cart_view.dart';
import 'package:manuapp/app/modules/payment_success/views/payment_success_view.dart';
import 'package:manuapp/app/widget/payment_success.dart';

import '../modules/cart/controllers/cart_controller.dart';

class PaymentPage extends StatefulWidget {
  final CartController controller = Get.find();
  PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int activeCard = 0;
  bool _isLoading = false;
  late Timer _timer;

  pay() {
    setState(() {
      _isLoading = true;
    });

    const oneSec = const Duration(seconds: 2);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          _isLoading = false;
          timer.cancel();
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PaymentSuccessView()));
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Payment',
            style: TextStyle(color: Colors.white),
          ),
          leading: BackButton(
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                activeCard == 0
                    ? AnimatedOpacity(
                        duration: Duration(milliseconds: 500),
                        opacity: activeCard == 0 ? 1 : 0,
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange,
                                  Colors.yellow.shade800,
                                  Colors.yellow.shade900,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Image.network(
                                            'https://firebasestorage.googleapis.com/v0/b/manu-app-4ee32.appspot.com/o/payment%2FGoPay-Logo.png?alt=media&token=fa7ef3d2-d12e-4737-8752-055308f3f201',
                                            height: 50),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "087889633130",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                        ),
                                        // Image.network(
                                        //   'https://img.icons8.com/ios/2x/sim-card-chip.png',
                                        //   height: 35,
                                        // ),
                                      ],
                                    )
                                  ],
                                )
                              ]),
                        ),
                      )
                    : AnimatedOpacity(
                        duration: Duration(milliseconds: 500),
                        opacity: activeCard == 1 ? 1 : 0,
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          padding: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              // color: Colors.grey.shade200
                              gradient: LinearGradient(
                                colors: [
                                  Colors.grey.shade200,
                                  Colors.grey.shade100,
                                  Colors.grey.shade200,
                                  Colors.grey.shade300,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.network(
                                        'https://firebasestorage.googleapis.com/v0/b/manu-app-4ee32.appspot.com/o/payment%2Flogo-ovo.png?alt=media&token=21f15fe0-667f-4daa-a375-977e493ddda5',
                                        height: 50),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "087889633130",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18),
                                        ),
                                        // Image.network(
                                        //   'https://img.icons8.com/ios/2x/sim-card-chip.png',
                                        //   height: 35,
                                        // ),
                                      ],
                                    )
                                  ],
                                )
                              ]),
                        ),
                      ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Payment Method",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeCard = 0;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: activeCard == 0
                            ? Border.all(color: Colors.grey.shade300, width: 1)
                            : Border.all(
                                color: Colors.grey.shade300.withOpacity(0),
                                width: 1),
                      ),
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/manu-app-4ee32.appspot.com/o/payment%2FGoPay-Logo.png?alt=media&token=fa7ef3d2-d12e-4737-8752-055308f3f201',
                        height: 50,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        activeCard = 1;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: activeCard == 1
                            ? Border.all(color: Colors.grey.shade300, width: 1)
                            : Border.all(
                                color: Colors.grey.shade300.withOpacity(0),
                                width: 1),
                      ),
                      child: Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/manu-app-4ee32.appspot.com/o/payment%2Flogo-ovo.png?alt=media&token=21f15fe0-667f-4daa-a375-977e493ddda5',
                        height: 50,
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 250,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Payment",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text("\Rp.${controller.total}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))
                  ],
                ),
                SizedBox(height: 30),
                MaterialButton(
                  onPressed: _isLoading
                      ? null
                      : () {
                          pay();
                        },
                  height: 50,
                  elevation: 0,
                  splashColor: Colors.yellow[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.yellow[800],
                  child: Center(
                    child: _isLoading
                        ? Container(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                              strokeWidth: 3,
                              color: Colors.black,
                            ),
                          )
                        : Text(
                            "Pay",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
