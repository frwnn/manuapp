import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  final emailC = TextEditingController(text: "");
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('ResetPasswordView'),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.asset('images/manubg.png'),
            TextField(
                controller: emailC,
                decoration: InputDecoration(labelText: "Email")),
            ElevatedButton(
                onPressed: () => authC.resetPassword(emailC.text),
                child: Text("Reset")),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah punya akun?"),
                TextButton(onPressed: () => Get.back(), child: Text("Login"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
