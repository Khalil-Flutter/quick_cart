import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update current Index when page Scroll
  void updatePageIndicator(index) => currentPageIndex = index;

  /// Jump to the specific dot selected page
  void dotNavigationClicked(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// update current Index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// update current Index & jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
