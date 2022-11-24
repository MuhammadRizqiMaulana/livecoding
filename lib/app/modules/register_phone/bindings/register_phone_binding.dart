import 'package:get/get.dart';

import '../controllers/register_phone_controller.dart';

class RegisterPhoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterPhoneController>(
      () => RegisterPhoneController(),
    );
  }
}
