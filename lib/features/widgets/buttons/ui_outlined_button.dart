part of 'buttons.dart';

class UIOutlinedButton extends StatelessWidget {
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

  const UIOutlinedButton({
    super.key,
    this.onPressed,
    this.style,
    this.isFullWidth = false,
    this.child,
  });

  const UIOutlinedButton.title({
    super.key,
    this.onPressed,
    this.style,
    this.isFullWidth = false,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return FullWidthWrapper(
      isFullWidth: isFullWidth,
      child: OutlinedButton(
        onPressed: onPressed,
        style: style ?? AppButtonStyle.outlinedButtonStyle,
        child: child,
      ),
    );
  }
}
