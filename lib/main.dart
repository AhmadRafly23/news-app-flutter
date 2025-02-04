import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:newsapp/app/core/dependency/dependency.dart';
import 'package:newsapp/app/service/auth_service.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  DepedencyCreator.init();

  final authService = Get.find<AuthService>();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: authService.currentUser != null
          ? Routes.NAVIGATION_BAR
          : Routes.GETSTARTED,
      getPages: AppPages.routes,
    ),
  );
}
