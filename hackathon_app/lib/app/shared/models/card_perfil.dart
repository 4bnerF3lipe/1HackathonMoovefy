import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

import 'cores_aplicativo.dart';

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
                Text(
                  descricao,
                  style: TextStyle(fontSize: 5.w),
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
