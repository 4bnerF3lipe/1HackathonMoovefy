import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../shared/models/cores_aplicativo.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: CoresAplicativo.corSecundaria,
        child: const Text('Tab de mapas'),
      ),
    );
  }
}
