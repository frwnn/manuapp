import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignupController extends GetxController {
  TextEditingController emailC = TextEditingController(text: "");
  TextEditingController passC = TextEditingController(text: "");
  TextEditingController nameC = TextEditingController(text: "");
  TextEditingController phoneC = TextEditingController(text: "");

  @override
  void onClose() {
    nameC.dispose();
    phoneC.dispose();
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }
}
