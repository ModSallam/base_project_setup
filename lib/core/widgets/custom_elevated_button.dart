import 'package:flutter/material.dart';

import '../../../../core/extensions/extensions.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';
import '../utils/constants.dart';
import 'custom_svg_asset_picture.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.text,
    this.assetName,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.fontSize,
    this.padding,
  });

  final String? text;
  final String? assetName;
  final Function() onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.secondary,
        foregroundColor: foregroundColor ?? AppColors.white,
        minimumSize: const Size(
          double.infinity,
          Constants.buttonHeight,
        ),
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Constants.textFieldBorderRadius,
          ),
        ),
      ),
      onPressed: onPressed,
      child: assetName != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomSvgAssetPicture(
                  assetName: assetName!,
                ),
                (Constants.defaultPadding / 2).xSizedBox,
                text != null
                    ? Text(
                        text!,
                        style: AppTextStyles.buttonTextStyle.copyWith(
                          fontSize: fontSize,
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            )
          : Text(
              text!,
              style: AppTextStyles.buttonTextStyle.copyWith(
                fontSize: fontSize,
              ),
            ),
    );
  }
}
