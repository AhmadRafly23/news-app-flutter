import 'package:get/get.dart';
import 'package:newsapp/app/data/services/auth_service.dart';

class DepedencyCreator {
  static void init() {
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
