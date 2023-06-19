import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.onPressed,
    this.underline = true,
  });

  final String text;
  final Color? color;
  final double? fontSize;
  final bool underline;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: color ?? AppColors.primary,
          fontSize: fontSize,
          decoration: underline ? TextDecoration.underline : null,
        ),
      ),
    );
  }
}
