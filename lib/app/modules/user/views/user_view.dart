import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:manuapp/app/widget/first.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UserView'),
        centerTitle: true,
      ),
      body: HomePage(),
    );
  }
}
