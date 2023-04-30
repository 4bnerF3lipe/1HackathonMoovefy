import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/models/card_perfil.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/fontes.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

import '../../shared/models/card_opcoes.dart';
import '../../shared/models/text_widget.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundBase(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(
                    color: CoresAplicativo.corBranca,
                    borderRadius: BorderRadius.circular(50.w),
                    border: Border.all(
                      width: 1,
                      color: CoresAplicativo.corDetalhe,
                    )),
                height: 13.h,
                width: 27.w,
                child: Icon(
                  Icons.person,
                  color: CoresAplicativo.corDetalhe,
                  size: 8.h,
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            TextWidget(
              texto: "Mariana Andreolli",
              fontSize: Fontes.fonteGrande,
              textColor: CoresAplicativo.corDetalhe,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
                width: 100.w,
                height: 15.h,
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.w),
                    color: CoresAplicativo.corBranca,
                    border: Border.all(width: 1, color: CoresAplicativo.cinzaClaro)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        TextWidget(
                          texto: "Telefone: ",
                          fontSize: Fontes.fontePadrao,
                        ),
                        const TextWidget(texto: "(14) 00000-0000")
                      ],
                    ),
                    Row(
                      children: const [
                        TextWidget(
                          texto: "Email: ",
                        ),
                        TextWidget(texto: "marianaandreolli@moovefy.com.br")
                      ],
                    ),
                    Row(
                      children: const [
                        TextWidget(
                          texto: "Endereço: ",
                        ),
                        TextWidget(texto: "Rua Vinte e Nove de Outubro, 7-50")
                      ],
                    ),
                  ],
                )),
            const CardOpcoes(descricao: "Apadrinhar um animal"),
            const CardOpcoes(descricao: "Pets adotados"),
            const CardOpcoes(descricao: "Sair"),
          ],
        ),
      ),
    );
  }
}
