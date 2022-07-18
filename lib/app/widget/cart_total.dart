import 'package:flutter/material.dart';
import 'package:manuapp/app/modules/cart/controllers/cart_controller.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();

  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style: Theme.of(context).textTheme.headline5),
                      Text('\Rp.${controller.total}',
                          style: Theme.of(context).textTheme.headline5),
                    ],
                  ),
                  Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color(0xffd17842),
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          print(controller.total.toString());
                        },
                        child: Center(
                            child: Text("Checkout",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
