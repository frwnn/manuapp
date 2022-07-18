import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
      shrinkWrap: true,
      itemCount: 2,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Harga",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Tanggal",
                                      style: TextStyle(
                                          color: Color(0xff919293),
                                          fontSize: 11),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Jam",
                                      style: TextStyle(
                                          color: Color(0xff919293),
                                          fontSize: 11),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0xffd17842),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Text("Beli lagi",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold))))
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
  }
}
