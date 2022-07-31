import 'package:flutter/material.dart';
import 'package:manuapp/app/models/promosi_model.dart';
import 'package:manuapp/app/widget/promosi_detail_page.dart';

class PromosiCard extends StatelessWidget {
  const PromosiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: Promosi.promosis.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PromosiDetailPage(
                                promosi: Promosi.promosis[index])));
                  },
                  child: Container(
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
                                  image: NetworkImage(
                                      Promosi.promosis[index].imageUrl),
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
                              Promosi.promosis[index].name,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Visibility(
                              visible: false,
                              child: Text(
                                Promosi.promosis[index].snk,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
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
                                      'Valid until 9 August 2022',
                                      style: TextStyle(
                                          color: Color(0xff919293),
                                          fontSize: 12),
                                    )
                                  ],
                                ),
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
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          );
        });
  }
}
