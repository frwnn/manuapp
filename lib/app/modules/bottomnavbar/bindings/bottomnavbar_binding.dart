import 'package:get/get.dart';

import '../../cart/controllers/cart_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../../order/controllers/order_controller.dart';
import '../../profil/controllers/profil_controller.dart';
import '../../voucher/controllers/voucher_controller.dart';
import '../controllers/bottomnavbar_controller.dart';

class BottomnavbarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomnavbarController>(
      () => BottomnavbarController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<VoucherController>(
      () => VoucherController(),
    );
    Get.lazyPut<CartController>(
      () => CartController(),
    );
    Get.lazyPut<OrderController>(
      () => OrderController(),
    );
    Get.lazyPut<ProfilController>(
      () => ProfilController(),
    );
  }
}
