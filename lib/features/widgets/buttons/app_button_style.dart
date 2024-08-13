import 'package:flutter/material.dart';
import 'package:glasses/features/shared/ui_colors.dart';
import 'package:glasses/features/shared/ui_sizes.dart';

class AppButtonStyle {
  static ButtonStyle get fullFillButtonStyle {
    return ElevatedButton.styleFrom(
      backgroundColor: UIColors.white,
      padding: EdgeInsets.symmetric(horizontal: UISizes.width.w16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UISizes.square.r12),
      ),
      fixedSize: Size(double.infinity, UISizes.height.h48),
    );
  }

  static ButtonStyle get outlinedButtonStyle {
    return OutlinedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: UISizes.width.w16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(UISizes.square.r12),
      ),
      fixedSize: Size(double.infinity, UISizes.height.h48),
      side: BorderSide(
        width: 1.0,
        color: UIColors.white,
      ),
    );
  }
}
