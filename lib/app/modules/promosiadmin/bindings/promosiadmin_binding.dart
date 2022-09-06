import 'package:get/get.dart';

import '../controllers/promosiadmin_controller.dart';

class PromosiadminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PromosiadminController>(
      () => PromosiadminController(),
    );
  }
}
