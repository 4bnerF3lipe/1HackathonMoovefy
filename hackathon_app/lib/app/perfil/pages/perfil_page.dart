import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  // late final PerfilController controller;

  @override
  void initState() {
    // controller = Get.put(PerfilController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: CoresAplicativo.corPrimaria),
        )
      ]),
    );
  }
}
