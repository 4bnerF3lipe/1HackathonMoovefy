import 'package:flutter/material.dart';

import '../../models/cores_aplicativo.dart';

class BackgroundBase extends StatelessWidget {
  final Widget child;
  const BackgroundBase({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(color: CoresAplicativo.corFundoPagina, child: child));
  }
}
