import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_loading.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomLoading(),
      ],
    );
  }
}
