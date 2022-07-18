import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VoucherController extends GetxController {
  User? user = FirebaseAuth.instance.currentUser;
}
