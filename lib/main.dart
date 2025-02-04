import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:newsapp/app/core/dependency/dependency.dart';
import 'package:newsapp/app/data/services/auth_service.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await dotenv.load(fileName: ".env");

  DepedencyCreator.init();

  final authService = Get.find<AuthService>();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: authService.currentUser != null
          ? AppPages.INITIAL
          : Routes.GETSTARTED,
      getPages: AppPages.routes,
    ),
  );
}
