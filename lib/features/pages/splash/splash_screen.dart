import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glasses/features/shared/ui_colors.dart';
import 'package:glasses/features/shared/ui_sizes.dart';
import 'package:glasses/features/shared/ui_svgs.dart';
import 'package:glasses/features/widgets/buttons/buttons.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              UIColors.splashGradientTop,
              UIColors.splashGradientBottom,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: UISizes.square.r158,
                        width: UISizes.square.r158,
                        child: SvgPicture.asset(UISvgs.healthLogoSvg),
                      ),
                      SizedBox(
                        width: UISizes.width.w224,
                        child: SvgPicture.asset(UISvgs.textLogoSvg),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(UISizes.square.r16),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    UIFullFillButton(
                      onPressed: () {},
                      isFullWidth: true,
                      child: Text(
                        "Dang nhap",
                        style: TextStyle(
                          color: UIColors.primary,
                          fontSize: UISizes.font.sp14,
                        ),
                      ),
                    ),
                    SizedBox(height: UISizes.height.h16),
                    UIOutlinedButton(
                      onPressed: () {},
                      isFullWidth: true,
                      child: Text(
                        "Dang nhap",
                        style: TextStyle(
                          color: UIColors.white,
                          fontSize: UISizes.font.sp14,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
