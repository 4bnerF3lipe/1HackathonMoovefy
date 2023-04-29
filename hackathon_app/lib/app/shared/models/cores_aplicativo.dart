import 'package:flutter/material.dart';

class CoresAplicativo {
  static final CoresAplicativo instance = CoresAplicativo._internal();

  factory CoresAplicativo() => instance;
  CoresAplicativo._internal();

  static const Color corPrimaria = Color(0xFFcee5d0);
  static const Color corSecundaria = Color(0xFFf3f0d7);
  static const Color corAmarelo = Color(0xFFf7d59c);
  static const Color corMarrom = Color(0xFF5e454b);
}
