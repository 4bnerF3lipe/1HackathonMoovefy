import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

import '../../models/cores_aplicativo.dart';

class BackgroundBase extends StatelessWidget {
  final Widget child;
  const BackgroundBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: child);
  }
}
