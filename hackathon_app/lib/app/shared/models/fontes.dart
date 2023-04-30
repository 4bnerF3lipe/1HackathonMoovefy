import 'package:hackathon_app/app/shared/models/tamanho.dart';

class Fontes {
  static final Fontes instance = Fontes._internal();
  factory Fontes() => instance;
  Fontes._internal();

  static final double fontePadrao = 15.sp;
  static final double fonteMedia = 18.sp;
  static final double fonteMediaPequena = 14.sp;
  static final double fonteGrande = 20.sp;
  static final double fonteTitulo = 22.sp;
}
