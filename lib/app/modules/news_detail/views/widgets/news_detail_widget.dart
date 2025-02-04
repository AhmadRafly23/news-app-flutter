import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_assets.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_network.dart';
import 'package:newsapp/app/modules/news_detail/controllers/news_detail_controller.dart';

class NewsDetailWidget extends StatelessWidget {
  const NewsDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NewsDetailController>();

    print(controller.title);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 360,
            height: 180,
            child: controller.newsDetail.value.imageUrl != null
                ? CustomBoxImageNetwork(
                    image: controller.newsDetail.value.imageUrl ?? '',
                    fit: BoxFit.cover,
                    borderRadius: BorderRadius.circular(8),
                  )
                : CustomBoxImageAssets(
                    image: 'assets/images/placeholder.png',
                    borderRadius: BorderRadius.circular(8),
                  ),
          ),
          SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              controller.newsDetail.value.date ?? '',
              style: poppinsRegular.copyWith(
                fontSize: 10,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            controller.newsDetail.value.title ?? '',
            style: poppinsRegular.copyWith(
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 24,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              controller.newsDetail.value.description ?? '',
              style: poppinsRegular.copyWith(
                fontSize: 12,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          //create button link news
          SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Baca Selengkapnya'),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
