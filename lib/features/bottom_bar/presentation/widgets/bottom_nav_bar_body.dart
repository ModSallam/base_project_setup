import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_svg_asset_picture.dart';
import '../controllers/bottom_bar_cubit/bottom_bar_cubit.dart';

class BottomNavBarBody extends StatelessWidget {
  const BottomNavBarBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        Constants.borderRadius,
      ),
      child: NavigationBar(
        selectedIndex: context.watch<BottomBarCubit>().state.index,
        onDestinationSelected: (index) =>
            context.read<BottomBarCubit>().changeSelectedIndex(
                  index: index,
                ),
        destinations: [
          NavigationDestination(
            icon: CustomSvgAssetPicture(
              assetName: AssetsManager.homeIconPath,
              color: AppColors.primary,
            ),
            selectedIcon: CustomSvgAssetPicture(
              assetName: AssetsManager.homeIconPath,
              color: AppColors.white,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: CustomSvgAssetPicture(
              assetName: AssetsManager.profileIconPath,
              color: AppColors.primary,
            ),
            selectedIcon: CustomSvgAssetPicture(
              assetName: AssetsManager.profileIconPath,
              color: AppColors.white,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
