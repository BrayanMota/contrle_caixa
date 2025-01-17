import 'package:flutter/material.dart';

import '../components/header_menu.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;

  const BaseLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Theme(
            data: Theme.of(context),
            child: const HeaderMenu(),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
