import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';

class AdocaoPage extends StatelessWidget {
  const AdocaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: CoresAplicativo.corSecundaria,
        child: const Text('Tab de adoção'),
      ),
    );
  }
}
