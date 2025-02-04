import 'package:get/get.dart';
import 'package:newsapp/app/modules/home/controllers/home_controller.dart';
import 'package:newsapp/app/modules/navigator_bar/controllers/navigator_bar_controller.dart';
import 'package:newsapp/app/modules/news_category/controllers/news_category_controller.dart';

class NavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationBarController>(
      () => NavigationBarController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<NewsCategoryController>(
      () => NewsCategoryController(),
    );
  }
}
