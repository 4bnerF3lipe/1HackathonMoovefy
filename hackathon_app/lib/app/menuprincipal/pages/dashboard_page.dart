import 'package:flutter/material.dart';

import '../../shared/models/cores_aplicativo.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: CoresAplicativo.corSecundaria,
        child: const Text('Tab inicial'),
      ),
    );
  }
}
