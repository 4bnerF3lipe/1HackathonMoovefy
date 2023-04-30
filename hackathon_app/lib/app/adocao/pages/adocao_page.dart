import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/models/card_perfil.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/fontes.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';
import 'package:hackathon_app/app/shared/models/text_widget.dart';

class AdocaoPage extends StatelessWidget {
  const AdocaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundBase(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              TextWidget(
                texto: "Adote um bichinho",
                fontSize: Fontes.fonteTitulo,
                fontWeight: FontWeight.bold,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: const [
                    CardPerfil(descricao: "Luna", imagem: Icons.circle),
                    CardPerfil(descricao: "Rex", imagem: Icons.circle),
                    CardPerfil(descricao: "Capitão", imagem: Icons.circle),
                    CardPerfil(descricao: "Chico", imagem: Icons.circle),
                    CardPerfil(descricao: "Pipoca", imagem: Icons.circle),
                    CardPerfil(descricao: "Paçoca", imagem: Icons.circle),
                    CardPerfil(descricao: "Thor", imagem: Icons.circle),
                    CardPerfil(descricao: "Pantera", imagem: Icons.circle),
                    CardPerfil(descricao: "Fred", imagem: Icons.circle),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
