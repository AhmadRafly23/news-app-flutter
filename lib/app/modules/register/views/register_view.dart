import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';
import 'package:newsapp/app/core/custom/button/custom_button.dart';
import 'package:newsapp/app/core/custom/form/custom_text_form_field.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_assets.dart';
import 'package:flutter/gestures.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 10,
                ),
                CustomBoxImageAssets(
                  image: 'assets/images/app_logo_image.png',
                  width: 72,
                  height: 76,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Selamat Datang Silahkan Mendaftar',
                    textAlign: TextAlign.center,
                    style: poppinsMedium.copyWith(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  label: 'Email',
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                CustomTextFormField(
                  label: 'Password',
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  padding: EdgeInsets.only(bottom: 10),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Sudah punya akun? ',
                          style: poppinsRegular.copyWith(
                            fontSize: 12,
                            color: grayColor,
                          ),
                        ),
                        TextSpan(
                          text: 'Masuk',
                          style: poppinsRegular.copyWith(
                            fontSize: 12,
                            color: Colors.deepOrangeAccent,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed('/login');
                            },
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                CustomButton(
                  text: 'Daftar',
                  onPressed: () {},
                  backgroundColor: darkBlueColor,
                  style:
                      poppinsMedium.copyWith(color: whiteColor, fontSize: 15),
                  height: 52,
                  borderRadius: 100,
                  // margin: EdgeInsets.only(bottom: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
