import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/card_perfil.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/fontes.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

import '../../shared/backgrounds/background_base/background_base.dart';
import '../../shared/models/text_widget.dart';

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
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Icon(
                Icons.circle,
                color: CoresAplicativo.corMarrom,
                size: 25.w,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            TextWidget(
              texto: "Maria da Silva Mendez",
              fontSize: Fontes.fonteGrande,
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
                    TextWidget(
                      texto: "Telefone: (14)55555-5555",
                      fontSize: Fontes.fontePadrao,
                    ),
                    TextWidget(
                      texto: "Email: mariamendez@gmail.com",
                      fontSize: Fontes.fontePadrao,
                    ),
                    TextWidget(
                      texto: "Endereço: Alameda dos Alecrins",
                      fontSize: Fontes.fontePadrao,
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
          ],
        ),
      ),
    );
  }
}
