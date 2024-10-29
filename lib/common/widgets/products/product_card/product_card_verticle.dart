import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quick_cart/common/styles/product_shadow.dart';
import 'package:quick_cart/common/widgets/custom_shapes/circular_container.dart';
import 'package:quick_cart/common/widgets/images/rounded_image.dart';
import 'package:quick_cart/common/widgets/text/product_title_text.dart';
import 'package:quick_cart/utils/constants/colors.dart';
import 'package:quick_cart/utils/constants/image_strings.dart';
import 'package:quick_cart/utils/constants/sizes.dart';
import 'package:quick_cart/utils/helpers/helper_functions.dart';

import '../../icon/circular_icon.dart';

class QCProductCardVerticle extends StatelessWidget {
  const QCProductCardVerticle({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = QCHelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius, and shadow
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [QCProductShadow.verticleProductShadow],
          borderRadius: BorderRadius.circular(QCSizes.productImageRadius),
          color: dark ? QCColors.darkerGrey : QCColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail Image, Heart Button, Discount Tag
            QCCircularContainer(
              height: 180,
              padding: EdgeInsets.all(1),
              backgroundColor: dark ? QCColors.darkerGrey : QCColors.white,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  QCRoundedImage(
                    imageURL: QCImages.productImage1,
                    applyImageRadius: true,
                    backgroundColor: dark ? QCColors.dark : QCColors.light,
                  ),

                  /// -- Heart Button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: QCCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),

                  /// -- Discount Tag
                  Positioned(
                    top: 10,
                    left: 5,
                    child: QCCircularContainer(
                      height: 30,
                      width: 40,
                      radius: QCSizes.sm,
                      backgroundColor: QCColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: QCSizes.sm,
                        vertical: QCSizes.xs,
                      ),
                      child: Center(
                        child: Text(
                          '20%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: QCColors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: QCSizes.spaceBtwItems / 2,
            ),

            /// -- Details
            Padding(
              padding: EdgeInsets.only(left: QCSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// -- Title
                  QCProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: QCSizes.xs,
                  ),
                  Row(
                    children: [
                      Text(
                        "Nike",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(
                        width: QCSizes.xs,
                      ),
                      Icon(
                        Iconsax.verify5,
                        color: QCColors.primary,
                        size: QCSizes.iconXs,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      Text(
                        '\$120',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: QCColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(QCSizes.cardRadiusMd),
                            bottomRight: Radius.circular(QCSizes.cardRadiusMd),
                          ),
                        ),
                        child: SizedBox(
                          height: QCSizes.iconLg * 1.2,
                          width: QCSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: QCColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
