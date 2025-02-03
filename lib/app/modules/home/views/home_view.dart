import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:newsapp/app/core/const/color.dart';
import 'package:newsapp/app/modules/home/views/widgets/news_appbar_widget.dart';
import 'package:newsapp/app/modules/home/views/widgets/news_category_widget.dart';
import 'package:newsapp/app/modules/home/views/widgets/news_content_header_widget.dart';
import 'package:newsapp/app/modules/home/views/widgets/top_news_widget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: NewsAppbarWidget(),
      body: ListView(
        shrinkWrap: true,
        children: [
          NewsContentHeaderWidget(),
          NewsCategoryWidget(),
          TopNewsWidget(),
        ],
      ),
    );
  }
}
