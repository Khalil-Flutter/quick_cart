import 'package:flutter/material.dart';
import 'package:quick_cart/common/widgets/app_bar/qc_app_bar.dart';

import '../../../../common/widgets/products/carts/copon_widgetcolors.dart';
import '../../../../utils/constants/sizes.dart';
import '../cart/components/cart_items.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QCAppBar(
        showBackArrow: true,
        title: Text(
          "Checkout",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(QCSizes.md),
        child: Column(
          children: [
            /// Items in cart
            QCCartItems(
              showAddRemoveButton: false,
            ),
            SizedBox(
              height: QCSizes.md,
            ),

            /// Coupon TextField
            QCCoponCode(),
          ],
        ),
      ),
    );
  }
}
