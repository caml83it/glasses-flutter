import 'package:flutter/material.dart';
import 'package:glasses/features/shared/ui_colors.dart';
import 'package:glasses/features/shared/ui_sizes.dart';

class UIText extends StatelessWidget {
  /// label title
  final String title;

  /// label color appearance
  final Color? titleColor;

  final double? titleSize;

  final FontWeight? fontWeight;

  const UIText({
    super.key,
    required this.title,
    this.titleColor,
    this.titleSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: titleSize ?? UISizes.font.sp14,
        color: titleColor ?? UIColors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
