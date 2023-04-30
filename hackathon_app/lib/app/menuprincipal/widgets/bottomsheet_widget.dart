import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hackathon_app/app/shared/models/cores_aplicativo.dart';
import 'package:hackathon_app/app/shared/models/tamanho.dart';

class BottomSheetBar extends StatelessWidget {
  final TabController tabController;
  final void Function(int) tapItem;
  const BottomSheetBar({super.key, required this.tapItem, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: [
        IconButton(
          color: CoresAplicativo.corSecundaria,
          icon: const Icon(
            Icons.home,
            color: CoresAplicativo.corMarrom,
          ),
          onPressed: () => tapItem(0),
        ),
        IconButton(
          icon: const Icon(
            Icons.map,
            color: CoresAplicativo.corMarrom,
          ),
          onPressed: () => tapItem(1),
        ),
        IconButton(
          icon: const Icon(
            Icons.heart_broken,
            color: CoresAplicativo.corMarrom,
          ),
          onPressed: () => tapItem(2),
        ),
        IconButton(
          icon: const Icon(
            Icons.person,
            color: CoresAplicativo.corMarrom,
          ),
          onPressed: () => tapItem(3),
        )
      ],
    );
  }
}
