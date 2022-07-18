import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('SignupView'),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 50),
                Image.asset('images/manubg.png'),
                TextField(
                    controller: controller.nameC,
                    decoration: InputDecoration(labelText: "Name")),
                TextField(
                    controller: controller.phoneC,
                    decoration: InputDecoration(labelText: "Phone Number")),
                TextField(
                    controller: controller.emailC,
                    decoration: InputDecoration(labelText: "Email")),
                TextField(
                    controller: controller.passC,
                    decoration: InputDecoration(labelText: "Password")),
                SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () => authC.signup(
                        controller.emailC.text,
                        controller.passC.text,
                        controller.nameC.text,
                        controller.phoneC.text),
                    child: Text("Daftar")),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sudah punya akun?"),
                    TextButton(
                        onPressed: () => Get.back(), child: Text("Login"))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
