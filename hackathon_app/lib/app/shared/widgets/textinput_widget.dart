import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

import '../models/cores_aplicativo.dart';

class TextInputWidget extends StatelessWidget {
  final EdgeInsets? padding;

  final String? placeholderText;
  final double? height;
  const TextInputWidget({super.key, this.padding, this.placeholderText, this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2.h))),
          hintText: placeholderText,
        ),
      ),
    );
  }
}
