import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manuapp/app/models/users.dart';
import 'package:manuapp/app/modules/bottomnavbar/views/bottomnavbar_view.dart';
import 'package:manuapp/app/modules/profil/views/profil_view.dart';

import '../controllers/auth_controller.dart';
import '../routes/app_pages.dart';
import '../utils/loading.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState();
  @override
  Widget build(BuildContext context) {
    return contro();
  }
}

class contro extends StatefulWidget {
  contro();

  @override
  _controState createState() => _controState();
}

class _controState extends State<contro> {
  _controState();
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  var role;
  var email;
  var uid;
  var name;
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users") //.where('uid', isEqualTo: user!.uid)
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
    }).whenComplete(() {
      CircularProgressIndicator();
      setState(() {
        email = loggedInUser.email.toString();
        role = loggedInUser.role.toString();
        uid = loggedInUser.uid.toString();
        name = loggedInUser.name.toString();
      });
    });
  }

  routing() {
    if (role == 'user') {
      return Get.toNamed(Routes.BOTTOMNAVBAR);
    } else if (role == 'admin') {
      return Get.toNamed(Routes.ADMINBOTNAV);
    }
    // else {
    //   return Get.toNamed(Routes.LOGIN);
    // }
  }

  final authC = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return routing();
  }
}
