import 'package:flutter/material.dart';
import 'package:quick_cart/features/shop/screens/product_details/components/product_image_slider.dart';
import 'package:quick_cart/features/shop/screens/product_details/components/product_meta_data.dart';
import 'package:quick_cart/features/shop/screens/product_details/components/rating_and_share.dart';
import 'package:quick_cart/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = QCHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1- Product Image Slider
            QCProductImageSlider(),

            /// 2- Product Details
            Padding(
              padding: EdgeInsets.symmetric(horizontal: QCSizes.md),
              child: Column(
                children: [
                  /// -Rating & Share
                  QCRatingAndShare(),

                  /// -Price, Title, Stock, Brand
                  ProductMetaData(),

                  /// -- Attributes
                  /// -- Checkout Buttons
                  /// -- Description
                  /// -- Reviews
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
