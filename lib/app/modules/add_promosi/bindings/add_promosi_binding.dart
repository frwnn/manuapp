import 'package:get/get.dart';

import '../controllers/add_promosi_controller.dart';

class AddPromosiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPromosiController>(
      () => AddPromosiController(),
    );
  }
}
