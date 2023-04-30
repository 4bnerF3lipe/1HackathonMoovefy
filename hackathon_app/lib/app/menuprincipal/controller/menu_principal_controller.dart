import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/app/mapa/pages/mapa_page.dart';
import 'package:hackathon_app/app/perfil/pages/perfil_page.dart';
import 'package:hackathon_app/app/reportar/pages/reportar_page.dart';
import '../../../base/base/core_controller.dart';
import '../../adocao/pages/adocao_page.dart';
import '../pages/dashboard_page.dart';

class MenuPrincipalController extends CoreController {
  late List<Widget> paginas = <Widget>[DashboardPage(), AdocaoPage(), MapaPage(), PerfilPage()];
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

  acoesRapidas() {
    Get.to(() => const ReportarPage());
  }
}
