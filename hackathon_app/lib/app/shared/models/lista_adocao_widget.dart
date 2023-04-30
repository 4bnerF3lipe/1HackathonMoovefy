import 'package:flutter/material.dart';

import 'card_adocao.dart';

class ListaAdocaoWidget extends StatelessWidget {
  final String nome;
  final String idade;
  final String ong;
  const ListaAdocaoWidget({super.key, required this.nome, required this.idade, required this.ong});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CardAdocao(
        nome: nome,
        idade: idade,
        ong: ong,
      ),
      CardAdocao(
        nome: nome,
        idade: idade,
        ong: ong,
      )
    ]);
  }
}
