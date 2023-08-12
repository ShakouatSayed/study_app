import 'package:get/get.dart';
import 'package:studyapp/controllers/auth_controller.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    //inject the dependencis
    // permanent is data saved in memory in permanent.
    Get.put(AuthController(),permanent: true);
  }
}
