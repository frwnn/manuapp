import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manuapp/app/models/promosi_model.dart';

class PromosiDetailPage extends StatelessWidget {
  const PromosiDetailPage({Key? key, required this.promosi}) : super(key: key);
  final Promosi promosi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 440,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: NetworkImage(promosi.imageUrl),
                            fit: BoxFit.cover)),
                  ),
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 40,
                      )),
                  Positioned(
                    top: 370,
                    child: BlurryContainer(
                      padding: EdgeInsets.all(20),
                      height: 140,
                      color: Color(0xff141921),
                      width: 377,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                promosi.name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Valid until 9 August 2022',
                                style: TextStyle(
                                  color: Color(0xff919296),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Syarat dan Ketentuan",
                      style: TextStyle(
                          color: Color(0xff919296),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      promosi.snk,
                      style: TextStyle(color: Color(0xff919296), fontSize: 15),
                    ),
                    SizedBox(
                      height: 160,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
