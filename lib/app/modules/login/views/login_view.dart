import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/auth_controller.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final emailC = TextEditingController(text: "greensand.up@gmail.com");
  final passC = TextEditingController(text: "123123");
  bool _obsecuretext = true;

  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('LoginView'),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            SizedBox(height: 50),
            Image.asset('images/manubg.png'),
            TextField(
                controller: emailC,
                decoration: InputDecoration(labelText: "Email")),
            TextField(
                obscureText: _obsecuretext,
                controller: passC,
                decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _obsecuretext = !_obsecuretext;
                      },
                      child: Icon(_obsecuretext
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ))),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Lupa Password?"),
                TextButton(
                    onPressed: () => Get.toNamed(Routes.RESET_PASSWORD),
                    child: Text("Reset Password"))
              ],
            ),
            ElevatedButton(
                onPressed: () => authC.login(emailC.text, passC.text),
                child: Text("Login")),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun?"),
                TextButton(
                    onPressed: () => Get.toNamed(Routes.SIGNUP),
                    child: Text("Daftar Sekarang"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
