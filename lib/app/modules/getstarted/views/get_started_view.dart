import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';
import 'package:newsapp/app/core/custom/button/custom_button.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_assets.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: double.maxFinite,
                child: CustomBoxImageAssets(
                  image: 'assets/images/app_logo_image.png',
                  width: 143,
                  height: 136,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              CustomButton(
                text: 'Daftar',
                onPressed: () {
                  Get.toNamed('/register');
                },
                backgroundColor: lightBlueColor,
                height: 52,
                borderRadius: 100,
                style: poppinsMedium.copyWith(
                  color: whiteColor,
                  fontSize: 15,
                ),
                margin: EdgeInsets.only(bottom: 30),
              ),
              Text(
                'Atau',
                style: poppinsRegular.copyWith(
                  fontSize: 15,
                  color: blackColor,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: 'Masuk',
                onPressed: () {
                  Get.toNamed('/login');
                },
                backgroundColor: darkBlueColor,
                height: 52,
                borderRadius: 100,
                style: poppinsMedium.copyWith(
                  color: whiteColor,
                  fontSize: 15,
                ),
                margin: EdgeInsets.only(bottom: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
