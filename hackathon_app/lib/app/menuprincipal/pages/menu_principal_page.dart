import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/app/menuprincipal/controller/menu_principal_controller.dart';
import 'package:hackathon_app/app/reportar/pages/reportar_page.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_menu/background_menu.dart';

class MenuPrincipalPage extends StatefulWidget {
  const MenuPrincipalPage({super.key});

  @override
  State<MenuPrincipalPage> createState() => _MenuPrincipalPageState();
}

class _MenuPrincipalPageState extends State<MenuPrincipalPage> {
  late MenuPrincipalController controller;
  int _selectedIndex = 0;
  @override
  void initState() {
    controller = MenuPrincipalController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundMenu(
      tabItemSelected: _selectedIndex,
      child: controller.paginas.elementAt(_selectedIndex),
      tapBottomItem: (i) {
        controller.selecionaPagina(i);
        setState(() {
          _selectedIndex = i;
        });
      },
      tapAcoesRapidas: () => controller.acoesRapidas(),
    );
  }
}
