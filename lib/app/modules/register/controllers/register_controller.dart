import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';

class RegisterController extends GetxController {
  final _auth = FirebaseAuth.instance;

  RxBool isLoading = false.obs;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<User?> createUserWithEmailAndPassword() async {
    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar("Error", "Email dan Password tidak boleh kosong",
          snackPosition: SnackPosition.BOTTOM);
      return null;
    }

    try {
      isLoading.value = true;
      final credential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      if (credential.user != null) {
        isLoading.value = false;
        Get.snackbar(
          "Berhasil",
          "Registrasi berhasil, silahkan login",
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.TOP,
          duration: Duration(seconds: 3),
          messageText: Text(
            "Registrasi berhasil, silahkan login",
            style: latoRegular.copyWith(color: whiteColor),
          ),
        );
        return credential.user;
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'email-already-in-use') {
        isLoading.value = false;
        Get.snackbar(
          "Gagal",
          "Email sudah digunakan",
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.TOP,
          duration: Duration(seconds: 3),
          messageText: Text(
            "Email sudah digunakan",
            style: latoRegular.copyWith(color: whiteColor),
          ),
        );
      }
      if (err.code == 'weak-password') {
        isLoading.value = false;
        Get.snackbar(
          "Gagal",
          "Password terlalu lemah",
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.TOP,
          duration: Duration(seconds: 3),
          messageText: Text(
            "Password terlalu lemah",
            style: latoRegular.copyWith(color: whiteColor),
          ),
        );
      }
    }

    return null;
  }
}
