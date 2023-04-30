import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';
import 'package:hackathon_app/app/shared/models/text_widget.dart';

import 'cores_aplicativo.dart';
import 'fontes.dart';

class CardOpcoes extends StatelessWidget {
  final String descricao;

  const CardOpcoes({super.key, required this.descricao});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2.h),
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.w),
          color: CoresAplicativo.corBranca,
          border: Border.all(width: 1, color: CoresAplicativo.cinzaClaro)),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  texto: descricao,
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 2.h,
              color: CoresAplicativo.cinzaClaro,
            ),
          ],
        ),
      ]),
    );
  }
}
