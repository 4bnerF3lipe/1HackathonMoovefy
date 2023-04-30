import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';
import '../../../menuprincipal/widgets/bottomsheet_widget.dart';
import '../../models/cores_aplicativo.dart';

class BackgroundMenu extends StatelessWidget {
  final int tabItemSelected;
  final void Function(int) tapBottomItem;
  final void Function() tapAcoesRapidas;
  final Widget? child;
  const BackgroundMenu(
      {super.key,
      required this.child,
      required this.tapAcoesRapidas,
      required this.tapBottomItem,
      required this.tabItemSelected});

  @override
  Widget build(BuildContext context) {
    return BackgroundBase(
      child: Scaffold(
        body: child,
        bottomNavigationBar: BottomSheetBar(
          tapItem: tapBottomItem,
          tabItemSelected: tabItemSelected,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () => tapAcoesRapidas,
          tooltip: 'Create',
          elevation: 10.h,
          backgroundColor: CoresAplicativo.corAmarelo,
          child: const Icon(
            Icons.send,
            color: CoresAplicativo.corMarrom,
          ),
        ),
      ),
    );
  }
}
