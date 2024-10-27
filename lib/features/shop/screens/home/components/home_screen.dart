import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_cart/features/shop/screens/home/components/qc_home_app_bar.dart';
import 'package:quick_cart/utils/constants/image_strings.dart';

import '../../../../../common/widgets/custom_shapes/primary_header_container.dart';
import '../../../../../common/widgets/custom_shapes/search_container.dart';
import '../../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../../common/widgets/text/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            QCPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- App bar --
                  QCHomeAppBar(),
                  SizedBox(
                    height: QCSizes.spaceBtwItems,
                  ),

                  /// -- Search Bar --
                  QCSearchContainer(
                    text: 'Search In Store',
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(
                    height: QCSizes.spaceBtwItems,
                  ),

                  /// -- Categories --
                  Padding(
                    padding: EdgeInsets.only(left: QCSizes.md),
                    child: Column(
                      children: [
                        /// -- Section Heading --
                        QCSectionHeadings(
                          title: 'Popular Categories',
                          textColor: QCColors.white,
                          showActionButton: false,
                        ),
                        SizedBox(
                          height: QCSizes.spaceBtwItems / 2,
                        ),

                        /// -- Categories --
                        SizedBox(
                          height: 90,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return QCVerticalImageText(
                                image: QCImages.sportIcon,
                                title: 'Sports',
                                onTap: () {},
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
