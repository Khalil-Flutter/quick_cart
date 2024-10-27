import 'package:flutter/material.dart';

class QCSectionHeadings extends StatelessWidget {
  const QCSectionHeadings({
    super.key,
    required this.title,
    this.textColor,
    this.onPressed,
    this.buttonTitle = "View All",
    this.showActionButton = true,
  });

  final String title, buttonTitle;
  final Color? textColor;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
            onPressed: () {},
            child: Text(buttonTitle),
          ),
      ],
    );
  }
}
