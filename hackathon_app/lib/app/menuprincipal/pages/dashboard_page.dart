import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/models/assets_aplicativo.dart';
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
          )
        ],
      ),
    ));
  }
}
