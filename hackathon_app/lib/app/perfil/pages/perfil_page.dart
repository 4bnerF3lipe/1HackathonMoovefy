import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/card_perfil.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

import '../../shared/backgrounds/background_base/background_base.dart';

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
    return BackgroundBase(
      child: Column(children: [
        Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(200), color: CoresAplicativo.corMarrom),
              ),
            )
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        Text(
          "Maria da Silva Mendez",
          style: TextStyle(fontSize: 5.w),
        ),
        SizedBox(
          height: 2.h,
        ),
        Container(
            width: 100.w,
            height: 15.h,
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.w), color: CoresAplicativo.corSecundaria),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Telefone: (14)55555-5555",
                  style: TextStyle(fontSize: 4.w),
                ),
                Text(
                  "Email: mariamendez@gmail.com",
                  style: TextStyle(fontSize: 4.w),
                ),
                Text(
                  "Endereço: Alameda dos Alecrins",
                  style: TextStyle(fontSize: 4.w),
                ),
              ],
            )),
        SizedBox(
          height: 2.h,
        ),
        const CardPerfil(descricao: "Apadrinhar um animal", imagem: Icons.circle),
        SizedBox(
          height: 2.h,
        ),
        const CardPerfil(descricao: "Sair", imagem: Icons.circle),
      ]),
    );
  }
}
