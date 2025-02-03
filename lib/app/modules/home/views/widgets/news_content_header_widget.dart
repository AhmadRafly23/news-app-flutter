import 'package:flutter/material.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_assets.dart';

class NewsContentHeaderWidget extends StatelessWidget {
  const NewsContentHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return _buildNewsCard(context);
        },
      ),
    );
  }

  Widget _buildNewsCard(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomBoxImageAssets(
        height: 200,
        image: 'assets/images/advertisement_image.png',
      ),
    );
  }
}
