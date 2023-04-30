import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'fontes.dart';

class TextWidget extends StatelessWidget {
  final String texto;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final int? maxLines;

  const TextWidget({super.key, required this.texto, this.fontSize, this.fontWeight, this.textColor, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      maxLines: maxLines,
      style: TextStyle(
          fontSize: fontSize ?? Fontes.fontePadrao, fontWeight: fontWeight, color: textColor ?? CoresAplicativo.textColor),
    );
  }
}
