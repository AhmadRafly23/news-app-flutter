import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_assets.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_network.dart';
import 'package:newsapp/app/modules/news_category/controllers/news_category_controller.dart';
import 'package:newsapp/app/modules/news_detail/controllers/news_detail_controller.dart';

class NewsCategoryView extends GetView<NewsCategoryController> {
  const NewsCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final detailController = Get.find<NewsDetailController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Technology News',
            style: poppinsMedium.copyWith(
              fontSize: 20,
            ),
          ),
        ),
      ),
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Obx(
                () => controller.isLoading.value
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.newsList.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            detailController.setTitle(
                                controller.newsList[index].title as String);
                            Get.toNamed('/news-detail');
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: index == 0 ? 0 : 24),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: controller.newsList[index].imageUrl !=
                                          null
                                      ? CustomBoxImageNetwork(
                                          image: controller
                                                  .newsList[index].imageUrl ??
                                              '',
                                          fit: BoxFit.cover,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        )
                                      : CustomBoxImageAssets(
                                          image:
                                              'assets/images/placeholder.png',
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                ),
                                const SizedBox(width: 24),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            style: poppinsSemiBold.copyWith(
                                                fontSize: 12,
                                                color: blackColor
                                                    .withOpacity(0.48)),
                                            text:
                                                '${controller.newsList[index].date}\n'),
                                        TextSpan(
                                          style: poppinsBold,
                                          text: controller
                                                  .newsList[index].title ??
                                              '',
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
