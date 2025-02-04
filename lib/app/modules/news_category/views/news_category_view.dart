import 'package:flutter/material.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_assets.dart';

class NewsCategoryView extends StatelessWidget {
  const NewsCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: whiteColor,
        title: Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            'Technology News',
            style: poppinsMedium.copyWith(
              fontSize: 20,
            ),
          ),
        ),
      ),
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(top: index == 0 ? 0 : 24),
                child: Row(
                  children: [
                    CustomBoxImageAssets(
                      image: 'assets/images/news_one.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                style: poppinsSemiBold.copyWith(
                                    fontSize: 12,
                                    color: blackColor.withOpacity(0.48)),
                                text: '12 April 2021\n'),
                            TextSpan(
                              style: poppinsBold.copyWith(fontSize: 18),
                              text:
                                  'The IPO parade continues as Wish files, Bumble targets',
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
