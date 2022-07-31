import 'package:get/get.dart';

import '../../homeadmin/controllers/homeadmin_controller.dart';
import '../../promosiadmin/controllers/promosiadmin_controller.dart';
import '../../saran_admin/controllers/saran_admin_controller.dart';
import '../controllers/adminbotnav_controller.dart';

class AdminbotnavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminbotnavController>(
      () => AdminbotnavController(),
    );
    Get.lazyPut<HomeadminController>(
      () => HomeadminController(),
    );
    Get.lazyPut<PromosiadminController>(
      () => PromosiadminController(),
    );
    Get.lazyPut<SaranAdminController>(
      () => SaranAdminController(),
    );
  }
}
