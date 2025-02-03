import 'package:flutter/material.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';

class PortofolioWidget extends StatelessWidget {
  const PortofolioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
        color: grayColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Portofolio',
            style: poppinsMedium.copyWith(fontSize: 20),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/flutter_image.png',
                    width: 32,
                    height: 32,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Flutter',
                    style: poppinsMedium,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/react_image.png',
                    width: 32,
                    height: 32,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'React',
                    style: poppinsMedium,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/codeigniter_image.png',
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Codeigniter',
                    style: poppinsMedium,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
