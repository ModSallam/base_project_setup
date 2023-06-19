import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/constants.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
    this.shadow = true,
  });

  final bool shadow;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: shadow
          ? Container(
              height: 70,
              width: 70,
              margin: const EdgeInsets.all(Constants.defaultPadding / 4),
              padding: const EdgeInsets.all(Constants.defaultPadding),
              decoration: BoxDecoration(
                color: AppColors.splash.withOpacity(0.4),
                borderRadius: BorderRadius.circular(Constants.borderRadius),
              ),
              child: const CircularProgressIndicator.adaptive(),
            )
          : const CircularProgressIndicator.adaptive(),
    );
  }
}
