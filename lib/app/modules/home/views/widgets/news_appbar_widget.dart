import 'package:flutter/material.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';

class NewsAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const NewsAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: whiteColor,
      title: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Home',
              style: poppinsMedium.copyWith(
                fontSize: 20,
              ),
            ),
            Text(
              'Hello, achmad@gmail.com',
              style: poppinsRegular.copyWith(
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
