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
      margin: EdgeInsets.only(top: 2.h),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.w),
          color: CoresAplicativo.corBranca,
          border: Border.all(width: 1, color: CoresAplicativo.cinzaClaro)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  imagem,
                  size: 10.w,
                  color: CoresAplicativo.corPrimaria,
                ),
                SizedBox(
                  width: 2.w,
                ),
                TextWidget(
                  texto: descricao,
                  fontSize: Fontes.fonteGrande,
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: CoresAplicativo.cinzaClaro,
            ),
          ],
        ),
      ]),
    );
  }
}
