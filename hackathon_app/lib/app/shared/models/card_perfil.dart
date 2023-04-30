import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';
import 'package:hackathon_app/app/shared/models/text_widget.dart';

import 'cores_aplicativo.dart';
import 'fontes.dart';

class CardBasicWidget extends StatelessWidget {
  final String titulo;
  final double? height;

  const CardBasicWidget({super.key, required this.titulo, this.height});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height,
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
              TextWidget(
                texto: titulo,
                fontSize: Fontes.fontePadrao,
                fontWeight: FontWeight.w500,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: CoresAplicativo.cinzaClaro,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
