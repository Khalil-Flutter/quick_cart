import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class QCCartCounterIcon extends StatelessWidget {
  const QCCartCounterIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: QCColors.black.withOpacity(0.8),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: QCColors.white,
                      fontSizeFactor: 0.8,
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
