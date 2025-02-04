import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/app/core/const/app_style.dart';
import 'package:newsapp/app/core/const/color.dart';

class LoginController extends GetxController {
  final _auth = FirebaseAuth.instance;

  RxBool isLoading = false.obs;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<User?> signInWithEmailAndPassword() async {
    try {
      isLoading.value = true;
      final credential = await _auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      if (credential.user != null) {
        isLoading.value = false;
        Get.snackbar(
          "Berhasil",
          "Login berhasil",
          backgroundColor: Colors.green,
          colorText: Colors.white,
          snackPosition: SnackPosition.TOP,
          duration: Duration(seconds: 3),
          messageText: Text(
            "Login berhasil",
            style: latoRegular.copyWith(color: whiteColor),
          ),
        );
        return credential.user;
      }
    } on FirebaseAuthException {
      isLoading.value = false;
      Get.snackbar(
        "Gagal",
        "Email atau password salah",
        backgroundColor: Colors.red,
        colorText: Colors.white,
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 3),
        messageText: Text(
          "Email atau password salah",
          style: latoRegular.copyWith(color: whiteColor),
        ),
      );
    }
    return null;
  }

  Future<void> logout() async {
    await _auth.signOut();
  }
}
