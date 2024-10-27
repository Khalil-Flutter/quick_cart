import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_cart/utils/constants/colors.dart';
import 'package:quick_cart/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavigationController = Get.put(BottomNavigationController());
    final darkMode = QCHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 60,
          elevation: 0,
          onDestinationSelected: (index) =>
              bottomNavigationController.selectedIndex.value = index,
          selectedIndex: bottomNavigationController.selectedIndex.value,
          backgroundColor: darkMode ? QCColors.black : QCColors.white,
          indicatorColor: darkMode
              ? QCColors.white.withOpacity(0.1)
              : QCColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'WishList'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(
        () => bottomNavigationController
            .screens[bottomNavigationController.selectedIndex.value],
      ),
    );
  }
}

class BottomNavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.teal,
    ),
    Container(
      color: Colors.amber,
    ),
    // HomeScreen(),
    // StoreScreen(),
    // WishListScreen(),
    // ProfileScreen(),
  ];

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
