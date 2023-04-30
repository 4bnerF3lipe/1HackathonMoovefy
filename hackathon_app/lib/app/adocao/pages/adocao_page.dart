import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/models/assets_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/card_perfil.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/fontes.dart';
import 'package:hackathon_app/app/shared/models/lista_adocao_widget.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';
import 'package:hackathon_app/app/shared/models/text_widget.dart';

import '../../shared/models/card_adocao.dart';

class AdocaoPage extends StatelessWidget {
  const AdocaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundBase(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: CoresAplicativo.corBranca,
                    contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w)),
                    hintText: 'O que você procura?',
                    hintStyle: TextStyle(
                      color: CoresAplicativo.cinzaClaro,
                      // other TextStyle properties
                    ),
                    suffixIcon: const Icon(Icons.search),
                    suffixIconColor: CoresAplicativo.cinzaClaro,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: CoresAplicativo.cinzaClaro,
                        ),
                        borderRadius: BorderRadius.circular(10.w)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: CoresAplicativo.corPrimaria),
                        borderRadius: BorderRadius.circular(10.w)),
                    focusColor: CoresAplicativo.corPrimaria),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TextWidget(
                    texto: "Encontre seu PET",
                    fontWeight: FontWeight.bold,
                  ),
                  Icon(
                    Icons.tune_rounded,
                    color: CoresAplicativo.textColor,
                  )
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                  ListaAdocaoWidget(
                    nome: "Calvin",
                    idade: "2 anos",
                    ong: "Arca da fé",
                    image1: AssetsAplicativo.cat1,
                    image2: AssetsAplicativo.cat2,
                  ),
                  ListaAdocaoWidget(
                    nome: "Calvin",
                    idade: "2 anos",
                    ong: "Arca da fé",
                    image1: AssetsAplicativo.cat3,
                    image2: AssetsAplicativo.dog1,
                  ),
                  ListaAdocaoWidget(
                    nome: "Calvin",
                    idade: "2 anos",
                    ong: "Arca da fé",
                    image1: AssetsAplicativo.dog2,
                    image2: AssetsAplicativo.dog3,
                  ),
                ]),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
