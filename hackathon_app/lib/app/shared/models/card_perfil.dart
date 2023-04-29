import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';
import 'package:hackathon_app/app/shared/models/text_widget.dart';

import 'cores_aplicativo.dart';
import 'fontes.dart';

class CardPerfil extends StatelessWidget {
  final IconData imagem;
  final String descricao;

  const CardPerfil({super.key, required this.descricao, required this.imagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.w), color: CoresAplicativo.corSecundaria),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  imagem,
                  size: 13.w,
                  color: CoresAplicativo.corMarrom,
                ),
                TextWidget(
                  texto: descricao,
                  fontSize: Fontes.fonteGrande,
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ]),
    );
  }
}
