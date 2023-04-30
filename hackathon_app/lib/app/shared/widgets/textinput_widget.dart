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
        cursorHeight: 3.h,
        decoration: InputDecoration(
            filled: true,
            contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w)),
            hintText: placeholderText,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: CoresAplicativo.cinzaClaro,
                ),
                borderRadius: BorderRadius.circular(10.w)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: CoresAplicativo.corPrimaria),
                borderRadius: BorderRadius.circular(10.w)),
            focusColor: CoresAplicativo.corPrimaria,
            hoverColor: Colors.white,
            fillColor: Colors.white),
      ),
    );
  }
}
