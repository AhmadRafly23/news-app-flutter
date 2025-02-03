import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';
import 'package:newsapp/app/modules/news_detail/views/widgets/news_detail_widget.dart';
import 'package:newsapp/app/modules/news_detail/views/widgets/news_suggestion_widget.dart';

import '../controllers/news_detail_controller.dart';

class NewsDetailView extends GetView<NewsDetailController> {
  const NewsDetailView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: whiteColor,
        title: Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'News',
            style: poppinsMedium.copyWith(
              fontSize: 20,
            ),
          ),
        ),
      ),
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          NewsDetailWidget(),
          NewsSuggestionWidget(),
        ],
      ),
    );
  }
}
