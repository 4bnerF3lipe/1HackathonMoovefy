import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:hackathon_app/app/perfil/pages/perfil_page.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

import 'app/menuprincipal/page/menu_principal_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool firstFrameAllowed = false;
    RendererBinding.instance.deferFirstFrame();
    return MediaQuery.fromWindow(
      child: Builder(builder: (context) {
        if (MediaQuery.of(context).size == Size.zero) return const SizedBox();
        if (!firstFrameAllowed) {
          RendererBinding.instance.allowFirstFrame();
          firstFrameAllowed = true;
        }
        Tamanho.carregaInformacoes(context);
        return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: GetMaterialApp(
                debugShowCheckedModeBanner: false,
                defaultTransition: Transition.native,
                locale: const Locale('pt', 'BR'),
                initialRoute: '/menu',
                getPages: [
                  GetPage(
                    name: "/menu",
                    page: () => const MenuPrincipalPage(),
                  ),
                ]));
      }),
    );
  }
}
