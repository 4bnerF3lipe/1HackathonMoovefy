import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/models/card_perfil.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/fontes.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

import '../../shared/models/text_widget.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundBase(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.circle,
                  color: CoresAplicativo.corPrimaria,
                  size: 25.w,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              TextWidget(
                texto: "Maria da Silva Mendez",
                fontSize: Fontes.fonteGrande,
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                  width: 100.w,
                  height: 15.h,
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.w),
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
                            fontWeight: FontWeight.bold,
                          ),
                          const TextWidget(texto: "(14) 55555-5555")
                        ],
                      ),
                      Row(
                        children: const [
                          TextWidget(
                            texto: "Email: ",
                            fontWeight: FontWeight.bold,
                          ),
                          TextWidget(texto: "mariamendez@gmail.com")
                        ],
                      ),
                      Row(
                        children: const [
                          TextWidget(
                            texto: "Endereço: ",
                            fontWeight: FontWeight.bold,
                          ),
                          TextWidget(texto: "Alameda dos Alecrins")
                        ],
                      ),
                    ],
                  )),
              SizedBox(
                height: 2.h,
              ),
              const CardPerfil(descricao: "Apadrinhar um animal", imagem: Icons.heart_broken_rounded),
              SizedBox(
                height: 2.h,
              ),
              const CardPerfil(descricao: "Sair", imagem: Icons.exit_to_app),
            ],
          ),
        ),
      ),
    );
  }
}
