import 'package:flutter/material.dart';
import 'package:manuapp/app/modules/cart/controllers/cart_controller.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';
import 'package:manuapp/app/modules/payment/views/payment_view.dart';
import 'package:manuapp/app/widget/payment.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();

  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Divider(
              color: Colors.white,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text('Diskon',
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 17,
                  //             fontWeight: FontWeight.bold)),
                  //     Text('${controller.promm}',
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 17,
                  //             fontWeight: FontWeight.bold)),
                  //   ],
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                      Text('\Rp.${controller.total}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color(0xffd17842),
                        borderRadius: BorderRadius.circular(10)),
                    child: InkWell(
                      onTap: () {
                        controller.addOrder();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PaymentView()));
                      },
                      child: Center(
                          child: Container(
                        child: Text("Checkout",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold)),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
