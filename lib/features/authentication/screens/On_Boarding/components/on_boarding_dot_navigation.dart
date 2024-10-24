import 'package:flutter/material.dart';
import 'package:quick_cart/features/authentication/controllers/On_Boarding/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final onBoardingDotNavigationController = OnBoardingController.instance;
    final dark = QCHelperFunctions.isDarkMode(context);
    return Positioned(
      left: QCSizes.defaultSpace,
      bottom: QCDeviceUtils.getBottomNavigationBarHeight(),
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? QCColors.light : QCColors.dark,
          dotHeight: 8,
        ),
        controller: onBoardingDotNavigationController.pageController,
        count: 3,
        onDotClicked: onBoardingDotNavigationController.dotNavigationClicked,
      ),
    );
  }
}
