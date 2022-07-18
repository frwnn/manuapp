import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manuapp/app/widget/profile.dart';

import '../../../controllers/auth_controller.dart';
import '../../../widget/custom_appbar.dart';
import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyProfile(),
    );
  }
}
