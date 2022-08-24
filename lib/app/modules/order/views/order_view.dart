import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/order_controller.dart';

class OrderView extends GetView<OrderController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Order History",
          style: TextStyle(fontSize: 29),
        ),
      ),
      backgroundColor: Colors.black,
      body: StreamBuilder<QuerySnapshot<Object?>>(
          stream: controller.streamData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              var listAlldoc = snapshot.data!.docs;
              return ListView.builder(
                itemCount: listAlldoc.length,
                itemBuilder: (context, index) {
                  // onTap: () => Get.toNamed(Routes.EDIT_PRODUCT,
                  //     arguments: listAlldoc[index].id),
                  return Expanded(
                      child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: listAlldoc.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 120,
                            width: 300,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${(listAlldoc[index].data() as Map<String, dynamic>)["product"]}",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "Rp.${(listAlldoc[index].data() as Map<String, dynamic>)["total"]}",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                "${(listAlldoc[index].data() as Map<String, dynamic>)["time"]}",
                                                style: TextStyle(
                                                    color: Color(0xff919293),
                                                    fontSize: 11),
                                              ),
                                            ],
                                          ),
                                          Container(
                                              height: 30,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffd17842),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Center(
                                                  child: Text(
                                                      "${(listAlldoc[index].data() as Map<String, dynamic>)["status"]}",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 17,
                                                          fontWeight: FontWeight
                                                              .bold))))
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xff242931),
                                borderRadius: BorderRadius.circular(20)),
                          )
                        ],
                      );
                    },
                  ));
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
