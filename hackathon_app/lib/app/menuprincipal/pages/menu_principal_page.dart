import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/app/menuprincipal/controller/menu_principal_controller.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_menu/background_menu.dart';

class MenuPrincipalPage extends StatefulWidget {
  const MenuPrincipalPage({super.key});

  @override
  State<MenuPrincipalPage> createState() => _MenuPrincipalPageState();
}

class _MenuPrincipalPageState extends State<MenuPrincipalPage> with SingleTickerProviderStateMixin {
  late MenuPrincipalController controller;

  @override
  void initState() {
    controller = MenuPrincipalController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundMenu(
      tabController: controller.tabController,
      child: TabBarView(controller: controller.tabController, children: controller.paginas),
      tapBottomItem: (i) {
        controller.selecionaPagina(i);
      },
      tapAcoesRapidas: () => controller.acoesRapidas(),
    );
  }
}
