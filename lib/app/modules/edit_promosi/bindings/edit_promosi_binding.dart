import 'package:get/get.dart';

import '../controllers/edit_promosi_controller.dart';

class EditPromosiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditPromosiController>(
      () => EditPromosiController(),
    );
  }
}
