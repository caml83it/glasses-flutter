import 'package:flutter/material.dart';
import 'package:glasses/features/shared/ui_colors.dart';

class BaseView extends StatelessWidget {
  final Widget? header;
  final Widget body;

  /// allow check keyboard
  final bool? resizeToAvoidBottomInset;

  const BaseView({
    super.key,
    this.header,
    required this.body,
    this.resizeToAvoidBottomInset,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      backgroundColor: UIColors.background,
      // GestureDetector to dismiss keyboard when click outside
      body: GestureDetector(
        // [HitTestBehavior.opaque] Ensures taps are detected on the entire screen
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: _getContent(),
      ),
    );
  }

  Widget _getContent() {
    if (header == null) {
      return body;
    }

    return Column(children: [header!, Expanded(child: body)]);
  }
}
