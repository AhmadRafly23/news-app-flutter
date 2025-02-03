import 'package:get/get.dart';
import 'package:newsapp/app/modules/navigator_bar/controllers/navigator_bar_controller.dart';

class NavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationBarController>(
      () => NavigationBarController(),
    );
  }
}
