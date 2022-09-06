import 'package:get/get.dart';

import '../controllers/saran_admin_controller.dart';

class SaranAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SaranAdminController>(
      () => SaranAdminController(),
    );
  }
}
