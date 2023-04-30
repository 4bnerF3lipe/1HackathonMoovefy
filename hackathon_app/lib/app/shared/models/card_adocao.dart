import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/fontes.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';
import 'package:hackathon_app/app/shared/models/text_widget.dart';

import 'cores_aplicativo.dart';

class CardAdocao extends StatelessWidget {
  final String nome;
  final String idade;
  final String ong;
  final String image;
  const CardAdocao({super.key, required this.nome, required this.idade, required this.ong, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 2.h),
      height: 19.h,
      width: 41.w,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.w),
          border: Border.all(
            width: 1,
            color: CoresAplicativo.cinzaClaro,
          )),
      child: Column(children: [
        Container(
          height: 8.h,
          width: 41.w,
          child: Image.asset(
            image,
            width: 41.w,
            height: 8.h,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
          child: Column(
            children: [
              TextWidget(
                texto: nome,
                fontWeight: FontWeight.bold,
                fontSize: Fontes.fonteMedia,
              ),
              SizedBox(
                height: .5.h,
              ),
              Row(
                children: [
                  TextWidget(
                    texto: "Idade: ",
                    fontWeight: FontWeight.bold,
                  ),
                  TextWidget(texto: idade),
                ],
              ),
              SizedBox(
                height: .5.h,
              ),
              Row(
                children: [
                  TextWidget(
                    texto: "ong: ",
                    fontWeight: FontWeight.bold,
                  ),
                  TextWidget(texto: ong),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
