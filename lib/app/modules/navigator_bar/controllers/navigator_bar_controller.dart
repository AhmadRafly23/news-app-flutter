import 'package:get/get.dart';
import 'package:newsapp/app/modules/about/views/about_view.dart';
import 'package:newsapp/app/modules/home/views/home_view.dart';
import 'package:newsapp/app/modules/news_detail/views/news_detail_view.dart';

class NavigationBarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  final List pages = [
    HomeView(),
    NewsDetailView(),
    AboutView(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
