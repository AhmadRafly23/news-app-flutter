import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';
// import 'package:newsapp/app/modules/login/controllers/login_controller.dart';
import 'package:newsapp/app/service/auth_service.dart';

class NewsAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const NewsAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Get.find<AuthService>();

    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: whiteColor,
      title: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Home',
                    style: poppinsMedium.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Hello, ${user.userEmail}',
                    style: poppinsRegular.copyWith(
                      fontSize: 14,
                    ),
                  )
                ],
              ),

              //create logout button
              GestureDetector(
                onTap: () {
                  user.logout();
                  Get.offAllNamed('/login');
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: blackColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Logout',
                    style: poppinsRegular.copyWith(
                      fontSize: 14,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
