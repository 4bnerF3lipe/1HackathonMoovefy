import 'package:flutter/material.dart';
import 'package:hackathon_app/app/mapa/pages/mapa_page.dart';
import 'package:hackathon_app/app/perfil/pages/perfil_page.dart';
import '../../../base/base/core_controller.dart';
import '../../adocao/pages/adocao_page.dart';
import '../pages/dashboard_page.dart';

class MenuPrincipalController extends CoreController {
  late List<Widget> paginas = <Widget>[DashboardPage(), MapaPage(), AdocaoPage(), PerfilPage()];
  late Widget? pagina;
  late int indice;

  MenuPrincipalController() {
    indice = 0;
    pagina = paginas[0];
  }
  @override
  void iniciaControlador() {}

  void selecionaPagina(int i) {
    indice = i;
  }

  acoesRapidas() {}
}
