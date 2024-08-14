import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glasses/features/feature_locator.dart';
import 'package:glasses/features/pages/signin/bloc/signin_bloc.dart';
import 'package:glasses/features/pages/signin/signin_screen_mixin.dart';
import 'package:glasses/features/shared/ui_colors.dart';
import 'package:glasses/features/shared/ui_sizes.dart';
import 'package:glasses/features/shared/ui_strings.dart';
import 'package:glasses/features/shared/ui_svgs.dart';
import 'package:glasses/features/widgets/buttons/buttons.dart';
import 'package:glasses/features/widgets/common/base_view.dart';
import 'package:glasses/features/widgets/labels/ui_text.dart';
import 'package:glasses/features/widgets/textfields/textfields.dart';
import 'package:glasses/shared/utils/log_utils.dart';

@RoutePage()
class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with WidgetsBindingObserver, SignInScreenMixin {
  late SignInBloc _bloc;

  @override
  void initState() {
    _bloc = featureLocator.get<SignInBloc>();
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _bloc.add(SignInInitialEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: BaseView(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SvgPicture.asset(
              UISvgs.bannerHeaderSvg,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: UISizes.width.w16),
              child: _buildSignInForm(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignInForm() {
    return Column(
      children: [
        UIText(
          title: context.signIn,
          titleColor: UIColors.primary,
          titleSize: UISizes.font.sp18,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: UISizes.height.h16),
        Wrap(
          runSpacing: UISizes.height.h8,
          children: [
            UIText(
              title: context.username,
              titleColor: UIColors.title,
              fontWeight: FontWeight.w400,
            ),
            const UITextField(),
          ],
        ),
        SizedBox(height: UISizes.height.h16),
        Wrap(
          runSpacing: UISizes.height.h8,
          children: [
            UIText(
              title: context.password,
              titleColor: UIColors.title,
              fontWeight: FontWeight.w400,
            ),
            const UISecureField(),
          ],
        ),
        SizedBox(height: UISizes.height.h8),
        Container(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: onForgotPasswordPressed,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: UISizes.height.h8),
              child: UIText(
                title: context.forgotPassword,
                titleColor: UIColors.title,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        SizedBox(height: UISizes.height.h40),
        UIFullFillButton(
          onPressed: onSignInWithCredentials,
          isFullWidth: true,
          backgroundColor: UIColors.primary,
          child: UIText(
            title: context.login,
            titleColor: UIColors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: UISizes.height.h4),
        Wrap(
          spacing: UISizes.width.w4,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            UIText(
              title: context.dontHaveAnAccount,
              titleColor: UIColors.text,
              fontWeight: FontWeight.w400,
            ),
            GestureDetector(
              onTap: onSignUpNowPressed,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: UISizes.height.h8),
                child: UIText(
                  title: context.signUpNow,
                  titleColor: UIColors.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: UISizes.height.h40),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: UISizes.width.w32),
              decoration: BoxDecoration(color: UIColors.hint),
              height: UISizes.height.h1,
            ),
            Container(
              color: UIColors.background,
              padding: EdgeInsets.symmetric(horizontal: UISizes.width.w12),
              child: UIText(
                title: context.or,
                titleColor: UIColors.title,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        SizedBox(height: UISizes.height.h12),
        Wrap(
          spacing: UISizes.width.w16,
          children: [
            GestureDetector(
              onTap: onSignInWithFacebook,
              child: SvgPicture.asset(
                UISvgs.fbSvg,
                width: UISizes.square.r36,
                height: UISizes.square.r36,
              ),
            ),
            GestureDetector(
              onTap: onSignInWithGoogle,
              child: SvgPicture.asset(
                UISvgs.ggSvg,
                width: UISizes.square.r36,
                height: UISizes.square.r36,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  void onForgotPasswordPressed() {
    LogUtils.methodIn();
  }

  @override
  Future<void> onSignInWithCredentials() {
    LogUtils.methodIn();
    throw UnimplementedError();
  }

  @override
  Future<void> onSignInWithFacebook() {
    LogUtils.methodIn();
    throw UnimplementedError();
  }

  @override
  Future<void> onSignInWithGoogle() {
    LogUtils.methodIn();
    throw UnimplementedError();
  }

  @override
  void onSignUpNowPressed() {
    LogUtils.methodIn();
  }
}
