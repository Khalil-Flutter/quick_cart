import 'package:flutter/material.dart';
import 'package:quick_cart/common/widgets/app_bar/qc_app_bar.dart';
import 'package:quick_cart/utils/constants/sizes.dart';

import '../../../../common/widgets/products/carts/add_remove_button.dart';
import '../../../../common/widgets/products/carts/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QCAppBar(
        showBackArrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(QCSizes.md),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          separatorBuilder: (_, __) => SizedBox(
            height: QCSizes.md,
          ),
          itemBuilder: (_, index) {
            return Column(
              children: [
                QCCartItem(),
                SizedBox(
                  height: QCSizes.sm,
                ),
                QCProductQuantityWithAddAndRemoveButton(),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Text("Checkout \$122"),
      ),
    );
  }
}
