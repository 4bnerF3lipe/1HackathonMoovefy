import 'package:flutter/material.dart';

class BackgroundBase extends StatelessWidget {
  final Widget? child;
  const BackgroundBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
    );
  }
}
