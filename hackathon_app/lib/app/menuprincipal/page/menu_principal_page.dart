import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuPrincipalPage extends StatefulWidget {
  const MenuPrincipalPage({super.key});

  @override
  State<MenuPrincipalPage> createState() => _MenuPrincipalPageState();
}

class _MenuPrincipalPageState extends State<MenuPrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
      ),
    );
  }
}
