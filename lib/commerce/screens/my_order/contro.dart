import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrderController extends GetxController {
  var currentTab = 0.obs;
  PageController pageController = PageController();
  void changePage() => pageController.animateToPage(
        currentTab.value,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
}
