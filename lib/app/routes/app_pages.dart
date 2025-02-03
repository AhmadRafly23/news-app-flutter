import 'package:get/get.dart';
import 'package:newsapp/app/modules/about/views/about_view.dart';
import 'package:newsapp/app/modules/navigator_bar/bindings/navigation_bar_binding.dart';
import 'package:newsapp/app/modules/navigator_bar/views/navigator_bar_view.dart';

import '../modules/getstarted/views/get_started_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/news_detail/bindings/news_detail_binding.dart';
import '../modules/news_detail/views/news_detail_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.NAVIGATION_BAR;

  static final routes = [
    GetPage(
      name: _Paths.GETSTARTED,
      page: () => const GetStartedView(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.NEWS_DETAIL,
      page: () => const NewsDetailView(),
      binding: NewsDetailBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
    ),
    GetPage(
      name: _Paths.NAVIGATION_BAR,
      page: () => const NavigatorBarView(),
      binding: NavigationBarBinding(),
    ),
  ];
}
