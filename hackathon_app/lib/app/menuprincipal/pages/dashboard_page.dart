import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/models/assets_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/card_perfil.dart';
import 'package:hackathon_app/app/shared/models/fontes.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';
import 'package:hackathon_app/app/shared/widgets/card_widget.dart';
import 'package:hackathon_app/app/shared/widgets/textinput_widget.dart';

import '../../shared/models/cores_aplicativo.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundBase(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      color: Colors.transparent,
      child: Column(
        children: [
          SizedBox(
            height: 3.h,
          ),
          TextInputWidget(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            placeholderText: "O que você procura?",
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Ações Rápidas",
                      style: TextStyle(
                        color: CoresAplicativo.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: Fontes.fonteMedia,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardWidget(
                        height: 12.h,
                        assetImage: AssetsAplicativo.cardshop,
                        titulo: "ONG's",
                      ),
                      SizedBox(
                        width: 2.5.h,
                      ),
                      CardWidget(
                        height: 12.h,
                        assetImage: AssetsAplicativo.cardong,
                        titulo: "Seja Padrinho",
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.5.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "últimas Noticias",
                      style: TextStyle(
                        color: CoresAplicativo.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: Fontes.fonteMedia,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(height: 20.h),
                    items: [
                      CardCarrouseel(
                        imagem: AssetsAplicativo.cat1,
                        texto: "Gatinha encontrada em bairro nobre!",
                      ),
                      CardCarrouseel(
                        imagem: AssetsAplicativo.dog1,
                        texto: "Pitoco se recupera de maus tratos!",
                      ),
                      CardCarrouseel(
                        imagem: AssetsAplicativo.dog3,
                        texto: "Estopinha encontra novo lar!",
                      )
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return i;
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 1.5.h),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Pets para Adoção",
                      style: TextStyle(
                        color: CoresAplicativo.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: Fontes.fonteMedia,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CardBasicWidget(
                        titulo: "Cães",
                      ),
                      SizedBox(
                        width: 2.5.h,
                      ),
                      CardBasicWidget(
                        titulo: "Gatos",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardBasicWidget(
                        titulo: "Cães Filhotes",
                      ),
                      SizedBox(
                        width: 2.5.h,
                      ),
                      CardBasicWidget(
                        titulo: "Cães Idosos",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardBasicWidget(
                        titulo: "Gatos Filhotes",
                      ),
                      SizedBox(
                        width: 2.5.h,
                      ),
                      CardBasicWidget(
                        titulo: "Gatos Idosos",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class CardCarrouseel extends StatelessWidget {
  late String imagem;
  late String texto;
  CardCarrouseel({super.key, required this.imagem, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          margin: EdgeInsets.symmetric(horizontal: 1.5.w),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.h)),
          child: Image.asset(imagem)),
      Padding(
        padding: EdgeInsets.only(bottom: 1.h),
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              texto,
              style: TextStyle(
                  color: CoresAplicativo.textColor, fontSize: Fontes.fonteMediaPequena, fontWeight: FontWeight.w500),
            )),
      )
    ]);
  }
}
