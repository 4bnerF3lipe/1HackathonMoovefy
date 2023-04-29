import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:hackathon_app/app/perfil/pages/perfil_page.dart';

import 'app/menuprincipal/page/menu_principal_page.dart';

void main() => runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      locale: const Locale('pt', 'BR'),
      initialRoute: '/menu',
      getPages: [
        GetPage(
          name: "/menu",
          page: () => const PerfilPage(),
        ),
      ],
    ));
