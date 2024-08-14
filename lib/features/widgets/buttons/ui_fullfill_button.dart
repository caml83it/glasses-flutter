part of 'buttons.dart';

class UIFullFillButton extends StatelessWidget {
  final VoidCallback? onPressed;

  /// Typically the button's label.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget? child;

  /// Customizes button's width.
  final bool isFullWidth;

  /// Customizes this button's appearance.
  /// Null by default.
  final Color? backgroundColor;

  const UIFullFillButton({
    super.key,
    this.onPressed,
    this.child,
    this.backgroundColor,
    this.isFullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
    );
    return FullWidthWrapper(
      isFullWidth: isFullWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style.merge(AppButtonStyle.fullFillButtonStyle),
        child: child,
      ),
    );
  }
}
