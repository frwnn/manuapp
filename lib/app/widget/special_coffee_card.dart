import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:manuapp/app/models/Product_spesial.dart';

class SpecialCoffeeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: demo_products.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(demo_products[index].image),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          demo_products[index].title,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          demo_products[index].ingre,
                          style:
                              TextStyle(color: Color(0xff919293), fontSize: 12),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  r'',
                                  style: TextStyle(
                                      color: Color(0xffd17842),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: "",
                                          decimalDigits: 0)
                                      .format(demo_products[index].price),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xffd17842),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xff141921),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          );
        });
  }
}
