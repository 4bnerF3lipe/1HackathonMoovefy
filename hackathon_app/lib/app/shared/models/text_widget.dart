import 'package:flutter/material.dart';
import 'fontes.dart';

class TextWidget extends StatelessWidget {
  final String texto;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;

  const TextWidget({super.key, required this.texto, this.fontSize, this.fontWeight, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(fontSize: fontSize ?? Fontes.fontePadrao, fontWeight: fontWeight, color: textColor),
    );
  }
}
