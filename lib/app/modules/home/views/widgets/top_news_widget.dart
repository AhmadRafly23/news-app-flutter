import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_assets.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_network.dart';
import 'package:newsapp/app/modules/home/controllers/home_controller.dart';

class TopNewsWidget extends StatelessWidget {
  const TopNewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();

    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Berita',
            style: latoBold,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: blackColor.withOpacity(0.1),
                  blurRadius: 12,
                  spreadRadius: 2,
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nasional',
                      style: latoBold.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('Lihat Semua');
                      },
                      child: Text(
                        'Lihat Semua',
                        style: latoRegular.copyWith(
                          fontSize: 13,
                          color: brownColor,
                        ),
                      ),
                    )
                  ],
                ),
                Obx(
                  () => controller.isLoading.value
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.newsList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 52,
                                    height: 52,
                                    child:
                                        controller.newsList[index].imageUrl !=
                                                null
                                            ? CustomBoxImageNetwork(
                                                image: controller
                                                        .newsList[index]
                                                        .imageUrl ??
                                                    '',
                                                fit: BoxFit.cover,
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              )
                                            : CustomBoxImageAssets(
                                                image:
                                                    'assets/images/placeholder.png',
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                  ),
                                  SizedBox(
                                    width: 32,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: grayColor.withOpacity(0.2),
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            controller.newsList[index].title ??
                                                '',
                                            style: latoSemiBold.copyWith(
                                              fontSize: 13,
                                              color:
                                                  blackColor.withOpacity(0.8),
                                            ),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            controller.newsList[index].date ??
                                                '',
                                            style: latoRegular.copyWith(
                                              fontSize: 12,
                                              color: grayColor,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
