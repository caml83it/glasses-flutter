import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  final Widget? header;
  final Widget body;

  const BaseView({super.key, this.header, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _getContent(),
    );
  }

  Widget _getContent() {
    if (header == null) {
      return body;
    }

    return Column(children: [header!, Expanded(child: body)]);
  }
}
