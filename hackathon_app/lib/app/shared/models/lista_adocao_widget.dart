import 'package:flutter/material.dart';

import 'card_adocao.dart';

class ListaAdocaoWidget extends StatelessWidget {
  final String nome;
  final String idade;
  final String ong;
  final String image1;
  final String image2;

  const ListaAdocaoWidget(
      {super.key, required this.nome, required this.idade, required this.ong, required this.image1, required this.image2});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CardAdocao(
        nome: nome,
        idade: idade,
        ong: ong,
        image: image1,
      ),
      CardAdocao(
        nome: nome,
        idade: idade,
        ong: ong,
        image: image2,
      )
    ]);
  }
}
