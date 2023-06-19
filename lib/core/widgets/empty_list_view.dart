import 'package:flutter/material.dart';

import '../utils/app_strings.dart';
import '../utils/app_text_styles.dart';

class EmptyListView extends StatelessWidget {
  const EmptyListView({
    super.key,
    required this.text,
    this.shrinkWrap = false,
  });

  final String text;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: shrinkWrap,
      children: [
        Center(
          child: Text(
            '$text ${AppStrings.listIsEmpty}',
            style: AppTextStyles.hintTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
