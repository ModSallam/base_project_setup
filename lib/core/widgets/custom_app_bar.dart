import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/assets_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.hasLogo = true,
  });

  final bool hasLogo;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: hasLogo
          ? SvgPicture.asset(
              AssetsManager.appBarlogoIconPath,
              width: 80,
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
