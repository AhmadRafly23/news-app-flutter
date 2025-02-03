import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/app/modules/navigator_bar/controllers/navigator_bar_controller.dart';

class NavigatorBarView extends GetView<NavigationBarController> {
  const NavigatorBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changePage,
          selectedItemColor: Colors.deepOrangeAccent,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: "About"),
          ],
        ),
      ),
    );
  }
}
