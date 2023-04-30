import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/models/assets_aplicativo.dart';
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
            height: 2.5.h,
          ),
          Align(alignment: Alignment.topLeft, child: Text("Ações Rápidas")),
          SizedBox(
            height: .5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CardWidget(
                assetImage: AssetsAplicativo.cardshop,
                titulo: "ONG's",
              ),
              SizedBox(
                width: 2.5.h,
              ),
              const CardWidget(
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
