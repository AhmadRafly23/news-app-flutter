import 'package:flutter/material.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_assets.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomBoxImageAssets(
            height: 180,
            width: 360,
            image: 'assets/images/news_image.png',
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Thusday, 08 march 2021',
              style: poppinsRegular.copyWith(
                fontSize: 10,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Covid-19 Indonesian People',
            style: poppinsRegular.copyWith(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Vivamus nec nulla sed urna tincidunt aliquam. '
              'Sed nec nulla nec nulla tincidunt aliquam. '
              'Sed nec nulla nec nulla tincidunt aliquam. '
              'Sed nec nulla nec nulla tincidunt aliquam. ',
              style: poppinsRegular.copyWith(
                fontSize: 12,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
