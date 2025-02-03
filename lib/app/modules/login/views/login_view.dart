import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';
import 'package:newsapp/app/core/custom/button/custom_button.dart';
import 'package:newsapp/app/core/custom/form/custom_text_form_field.dart';
import 'package:newsapp/app/core/custom/image/custom_box_image_assets.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
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
                    'Selamat Datang Kembali',
                    textAlign: TextAlign.center,
                    style: poppinsMedium.copyWith(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Belum punya akun? ',
                            style: poppinsRegular.copyWith(
                              fontSize: 12,
                              color: grayColor,
                            ),
                          ),
                          TextSpan(
                            text: 'Daftar',
                            style: poppinsRegular.copyWith(
                              fontSize: 12,
                              color: Colors.deepOrangeAccent,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed('/register');
                              },
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/forgotpassword');
                      },
                      child: Text(
                        'Lupa Password',
                        style: poppinsRegular.copyWith(
                          fontSize: 12,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: 'Masuk',
                  onPressed: () {},
                  backgroundColor: lightBlueColor,
                  style:
                      poppinsMedium.copyWith(color: whiteColor, fontSize: 15),
                  height: 52,
                  borderRadius: 100,
                  margin: EdgeInsets.only(bottom: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
