import 'package:flutter/material.dart';
import 'package:hackathon_app/app/shared/backgrounds/background_base/background_base.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';
import '../../../menuprincipal/widgets/bottomsheet_widget.dart';
import '../../models/cores_aplicativo.dart';

class BackgroundMenu extends StatelessWidget {
  final Widget? child;
  const BackgroundMenu({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BackgroundBase(
      child: Scaffold(
        body: child,
        bottomNavigationBar: const BottomSheetBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Create',
          elevation: 10.h,
          backgroundColor: Colors.grey[300],
          child: Transform.rotate(
            angle: -20,
            child: const Icon(
              Icons.send,
              color: CoresAplicativo.corMarrom,
            ),
          ),
        ),
      ),
    );
  }
}
