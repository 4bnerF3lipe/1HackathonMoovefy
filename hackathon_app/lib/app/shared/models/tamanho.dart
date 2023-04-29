import 'package:flutter/widgets.dart';

class Tamanho {
  late final double alturaDispositivo;
  late final double larguraDispositivo;

  static late Tamanho instance;
  factory Tamanho() => instance;
  Tamanho._internal();

  static void carregaInformacoes(BuildContext context) {
    instance = Tamanho._internal()
      ..alturaDispositivo = MediaQuery.of(context).size.height
      ..larguraDispositivo = MediaQuery.of(context).size.width;
  }
}

extension MedidasAplicativo on num {
  double get w => Tamanho.instance.larguraDispositivo * (this / 100);

  double get h => Tamanho.instance.alturaDispositivo * (this / 100);

  double get sp => this * (Tamanho.instance.larguraDispositivo / 360);
}
