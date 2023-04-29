import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_menu/background_menu.dart';

class MenuPrincipalPage extends StatefulWidget {
  const MenuPrincipalPage({super.key});

  @override
  State<MenuPrincipalPage> createState() => _MenuPrincipalPageState();
}

class _MenuPrincipalPageState extends State<MenuPrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundMenu(
      child: Container(
        color: Colors.white,
      ),
    );
  }
}
