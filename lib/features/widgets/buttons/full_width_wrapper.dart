import 'package:flutter/material.dart';

class FullWidthWrapper extends StatelessWidget {
  /// Customizes width.
  final bool isFullWidth;

  final Widget child;

  const FullWidthWrapper({
    super.key,
    required this.isFullWidth,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    if (isFullWidth) {
      return SizedBox(width: double.infinity, child: child);
    }

    /// wrapper child
    return child;
  }
}
