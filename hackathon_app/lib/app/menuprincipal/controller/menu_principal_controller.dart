import 'package:flutter/material.dart';
import 'package:hackathon_app/app/mapa/pages/mapa_page.dart';
import 'package:hackathon_app/app/perfil/pages/perfil_page.dart';
import '../../../base/base/core_controller.dart';
import '../../adocao/pages/adocao_page.dart';
import '../pages/dashboard_page.dart';

class MenuPrincipalController extends CoreController {
  late List<Widget> paginas = [];
  late Widget? pagina;
  late TabController tabController;

  MenuPrincipalController(TickerProvider tick) {
    tabController = TabController(length: 4, vsync: tick);
    paginas = [const DashboardPage(), const MapaPage(), const AdocaoPage(), const PerfilPage()];
    pagina = paginas[0];
  }
  @override
  void iniciaControlador() {}

  void selecionaPagina(int indice) {
    tabController.index = indice;
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  acoesRapidas() {}
}
