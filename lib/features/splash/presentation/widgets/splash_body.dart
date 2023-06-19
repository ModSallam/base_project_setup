import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/my_extensions/my_extensions.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_block_container.dart';
import '../../../../core/widgets/custom_shadow.dart';
// import '../../../../core/widgets/custom_loading.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            AssetsManager.splashBgImgPath,
            fit: BoxFit.contain,
          ),
        ),
        const CustomBlockContainer(),
        const CustomShadow(),
        Positioned(
          top: context.height * 0.35,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.horizontalPadding,
            ),
            child: Center(
              child: SvgPicture.asset(
                AssetsManager.logoIconPath,
              ),
            ),
          ),
        ),
        Constants.defaultPadding.ySizedBox,
        // CustomLoading(),
      ],
    );
  }
}
