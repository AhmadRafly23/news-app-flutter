import 'package:get/get.dart';
import 'package:newsapp/app/modules/about/views/about_view.dart';
import 'package:newsapp/app/modules/home/views/home_view.dart';
import 'package:newsapp/app/modules/news/views/news_view.dart';

class NavigationBarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  final List pages = [
    HomeView(),
    NewsView(),
    AboutView(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
