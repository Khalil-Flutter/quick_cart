import 'package:flutter/material.dart';
import 'package:quick_cart/common/widgets/app_bar/qc_app_bar.dart';
import 'package:quick_cart/common/widgets/custom_shapes/circular_container.dart';
import 'package:quick_cart/common/widgets/custom_shapes/search_container.dart';
import 'package:quick_cart/common/widgets/layout/grid_layout.dart';
import 'package:quick_cart/common/widgets/products/carts/cart_counter_icon.dart';
import 'package:quick_cart/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:quick_cart/common/widgets/text/section_heading.dart';
import 'package:quick_cart/utils/constants/enums.dart';
import 'package:quick_cart/utils/constants/sizes.dart';
import 'package:quick_cart/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/images/circular_images.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = QCHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: QCAppBar(
        title: Text(
          "Store",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          QCCartCounterIcon(
            onPressed: () {},
            iconColor: dark ? QCColors.light : QCColors.dark,
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: false,
              floating: true,
              automaticallyImplyLeading: false,
              backgroundColor: QCHelperFunctions.isDarkMode(context)
                  ? QCColors.black
                  : QCColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: QCSizes.md,
                  vertical: QCSizes.sm,
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(
                      height: QCSizes.sm,
                    ),
                    QCSearchContainer(
                      text: "Search In Store",
                      showBorder: true,
                      showBackGround: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(
                      height: QCSizes.sm,
                    ),
                    QCSectionHeadings(
                      title: "Featured Brands",
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: QCSizes.sm,
                    ),
                    QCGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 60,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: QCCircularContainer(
                            radius: 18,
                            height: 60,
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            border: Border.all(
                              color: dark ? QCColors.darkGrey : QCColors.grey,
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                  child: CircularImages(
                                    isNetworkImage: false,
                                    image: QCImages.nikeLogo,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        dark ? QCColors.light : QCColors.dark,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      QCBrandTitleWithVerifiedIcon(
                                        title: "Nike",
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        "256 Products",
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
