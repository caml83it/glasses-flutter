part of 'buttons.dart';

class UIFullFillButton extends StatelessWidget {
  final VoidCallback? onPressed;

  /// Typically the button's label.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget? child;

  /// Customizes this button's appearance.
  /// Null by default.
  final ButtonStyle? style;

  /// Customizes button's width.
  final bool isFullWidth;

  const UIFullFillButton({
    super.key,
    this.onPressed,
    this.child,
    this.style,
    this.isFullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return FullWidthWrapper(
      isFullWidth: isFullWidth,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style ?? AppButtonStyle.fullFillButtonStyle,
        child: child,
      ),
    );
  }
}
