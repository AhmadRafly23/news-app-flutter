import 'package:get/get.dart';
import 'package:newsapp/app/modules/news_category/controllers/news_category_controller.dart';
import 'package:newsapp/app/modules/news_detail/controllers/news_detail_controller.dart';

class NewsCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsCategoryController>(
      () => NewsCategoryController(),
    );
    Get.lazyPut<NewsDetailController>(
      () => NewsDetailController(),
    );
  }
}
